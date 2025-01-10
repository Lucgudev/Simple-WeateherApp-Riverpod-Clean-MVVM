import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weatherapp/core/theme/app_colors.dart';
import 'package:weatherapp/core/utils/date_format_utils.dart';
import 'package:weatherapp/data/constants/app_constants.dart';
import 'package:weatherapp/presentation/screens/home/component/forecast_weather_provider.dart';

final selectedDateIndexProvider = StateProvider<int>((ref) => 0);

class ForecastWeatherComponent extends ConsumerWidget {
  const ForecastWeatherComponent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(forecastWeatherProvider);
    final selectedDate = ref.watch(selectedDateIndexProvider);
    final appTextTheme = Theme.of(context).textTheme;

    return state.when(data: (data) {
      final weatherItem = data.values.elementAt(selectedDate);
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 8),
            child: Text(
              'Hourly Forecast',
              style: appTextTheme.titleMedium,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  child: Icon(
                    Icons.arrow_back_ios_rounded,
                    color: (selectedDate != 0)
                        ? AppColors.textPrimary
                        : Colors.transparent,
                  ),
                  onTap: () {
                    ref
                        .read(forecastWeatherProvider.notifier)
                        .decrementSelectedDate();
                  },
                ),
                const SizedBox(
                  width: 16,
                ),
                Text(
                  data.keys.elementAt(selectedDate),
                  style: appTextTheme.bodyMedium,
                ),
                const SizedBox(
                  width: 16,
                ),
                InkWell(
                  child: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: (selectedDate != data.keys.length - 1)
                        ? AppColors.textPrimary
                        : Colors.transparent,
                  ),
                  onTap: () {
                    ref
                        .read(forecastWeatherProvider.notifier)
                        .incrementSelectedDate();
                  },
                ),
              ],
            ),
          ),
          SizedBox(
            height: 140,
            child: ListView.builder(
              itemCount: weatherItem.length,
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemBuilder: (ctx, index) {
                return Card(
                  //margin: const EdgeInsets.all(8),
                  child: SizedBox(
                    width: 100,
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Image.network(
                            '${AppConstants.imageBaseUrl}/${weatherItem[index].weather[0].icon}@2x.png',
                            fit: BoxFit.cover,
                            height: 48,
                            width: 48,
                          ),
                          Text(
                            weatherItem[index].weather[0].main,
                            style: appTextTheme.bodySmall,
                          ),
                          Text(
                            '${weatherItem[index].main.temp}\u00b0C',
                            style: appTextTheme.bodySmall,
                          ),
                          Text(
                            DateFormatUtils.convertToHourFormat(
                              weatherItem[index].dt,
                            ),
                            style: appTextTheme.labelMedium,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      );
    }, error: (error, _) {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'Failed to load forecast weather data',
              style: appTextTheme.bodyMedium,
            ),
            ElevatedButton(
                onPressed: () {
                  ref.invalidate(forecastWeatherProvider);
                },
                child: const Text('Refresh'))
          ],
        ),
      );
    }, loading: () {
      return const Center(
        child: CircularProgressIndicator(),
      );
    });
  }
}
