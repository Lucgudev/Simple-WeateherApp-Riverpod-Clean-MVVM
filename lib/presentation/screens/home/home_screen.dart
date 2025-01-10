import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weatherapp/domain/entities/background_image.dart';
import 'package:weatherapp/presentation/screens/home/component/current_weather_component.dart';
import 'package:weatherapp/presentation/screens/home/component/forecast_weather_component.dart';
import 'package:weatherapp/presentation/screens/home/home_screen_viewmodel.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.read(homeScreenViewModelProvider);

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

          const Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsets.all(16),
                  child: CurrentWeatherComponent(),
                ),
                SizedBox(
                  height: 16,
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 16),
                    child: ForecastWeatherComponent(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
