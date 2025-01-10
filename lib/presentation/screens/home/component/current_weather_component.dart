import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weatherapp/core/theme/app_colors.dart';
import 'package:weatherapp/data/constants/app_constants.dart';
import 'package:weatherapp/presentation/screens/home/component/current_weather_provider.dart';

class CurrentWeatherComponent extends ConsumerWidget {
  const CurrentWeatherComponent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(currentWeatherProvider);
    final appTextTheme = Theme.of(context).textTheme;

    return state.when(data: (data) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                border: Border.all(color: AppColors.textPrimary),
                borderRadius: BorderRadius.circular(12)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 8),
                  child: Icon(
                    Icons.location_on,
                    size: 16,
                  ),
                ),
                Text(
                  data.name ?? '',
                  style: appTextTheme.bodyMedium,
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${data.main.temp}',
                style: appTextTheme.displayLarge,
              ),
              Text(
                '\u00b0C',
                style: appTextTheme.bodyLarge,
              ),
              Image.network(
                '${AppConstants.imageBaseUrl}/${data.weather[0].icon}@2x.png',
                fit: BoxFit.cover,
                height: 48,
                width: 48,
              ),
            ],
          ),
          Text(data.weather[0].main),
          Text(
            data.weather[0].description,
            style: appTextTheme.labelSmall,
          ),
          const SizedBox(
            height: 16,
          ),
          Card(
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      const Icon(
                        Icons.air,
                        size: 32,
                      ),
                      Text(
                        'Wind',
                        style: appTextTheme.labelSmall,
                      ),
                      Text(
                        '${data.wind.speed} m/s',
                        style: appTextTheme.titleMedium,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Icon(
                        Icons.thermostat_rounded,
                        size: 32,
                      ),
                      Text(
                        'Highest Temperature',
                        style: appTextTheme.labelSmall,
                      ),
                      Text(
                        '${data.main.tempMax}\u00b0C',
                        style: appTextTheme.titleMedium,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Icon(
                        Icons.thermostat_rounded,
                        size: 32,
                      ),
                      Text(
                        'Lowest Temperature',
                        style: appTextTheme.labelSmall,
                      ),
                      Text(
                        '${data.main.tempMin}\u00b0C',
                        style: appTextTheme.titleMedium,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      );
    }, error: (error, _) {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'Failed to load current weather data',
              style: appTextTheme.bodyMedium,
            ),
            ElevatedButton(
                onPressed: () {
                  ref.invalidate(currentWeatherProvider);
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
