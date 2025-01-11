import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:weatherapp/domain/entities/background_image.dart';
import 'package:weatherapp/presentation/dialog/permission_dialog.dart';
import 'package:weatherapp/presentation/screens/home/component/current_weather_component.dart';
import 'package:weatherapp/presentation/screens/home/component/current_weather_provider.dart';
import 'package:weatherapp/presentation/screens/home/component/forecast_weather_component.dart';
import 'package:weatherapp/presentation/screens/home/component/forecast_weather_provider.dart';
import 'package:weatherapp/presentation/screens/home/home_screen_viewmodel.dart';
import 'package:weatherapp/generated/l10n.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.read(homeScreenViewModelProvider);

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await requestPermissionLocation(context, ref);
    });

    return Scaffold(
      //appBar: AppBar(),
      body: Stack(
        children: [
          Positioned.fill(
            child: SvgPicture.asset(
              (state.backgroundImage == BackgroundImage.night)
                  ? 'assets/images/background_night.svg'
                  : 'assets/images/background_day.svg',
              fit: BoxFit.cover,
            ),
          ),

          // Transparent White Overlay
          Positioned.fill(
            child: Container(
              color: Colors.white.withOpacity(0.2), // Semi-transparent white
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 32, bottom: 16),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                const Padding(
                  padding: EdgeInsets.all(16),
                  child: CurrentWeatherComponent(),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 16),
                    child: ForecastWeatherComponent(),
                  ),
                ),
                //TODO Use https://pub.dev/packages/package_info_plus
                Text(
                  'App Version 1.0.0',
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> requestPermissionLocation(
      BuildContext context, WidgetRef ref) async {
    final permissionStatus = await Permission.location.status;
    if (permissionStatus == PermissionStatus.granted) {
      return;
    }

    if (Platform.isAndroid) {
      if (await Permission.location.shouldShowRequestRationale) {
        await PermissionDialog.showLocationPermissionDialog(
          context,
          onPressed: openAppSettings,
          negativeBtnLabel: S.current.cancel,
          positiveBtnLabel: S.current.setting,
          title: S.current.rationaleTitle,
          subtitle: S.current.rationaleDesc,
        );
      } else {
        final permissionResult = await Permission.location.request();
        if (permissionResult == PermissionStatus.granted) {
          ref.invalidate(currentWeatherProvider);
          ref.invalidate(forecastWeatherProvider);
          return;
        }
      }
    } else {
      final permissionStatus = await Permission.location.status;
      if (permissionStatus.isPermanentlyDenied) {
        await PermissionDialog.showLocationPermissionDialog(
          context,
          onPressed: openAppSettings,
          negativeBtnLabel: S.current.cancel,
          positiveBtnLabel: S.current.setting,
          title: S.current.rationaleTitle,
          subtitle: S.current.rationaleDesc,
        );
        return;
      }

      final permissionResult = await Permission.location.request();
      if (permissionResult == PermissionStatus.granted) {
        return;
      }
    }
  }
}
