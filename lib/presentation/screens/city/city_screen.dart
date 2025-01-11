import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weatherapp/core/theme/app_colors.dart';
import 'package:weatherapp/generated/l10n.dart';
import 'package:weatherapp/presentation/screens/city/city_screen_viewmodel.dart';

class CityScreen extends ConsumerWidget {
  CityScreen({super.key});

  final textCityController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTextTheme = Theme.of(context).textTheme;
    final state = ref.watch(cityScreenViewModelProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).cityScreenAppBarTitle),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: textCityController,
                    maxLines: 1,
                    style: appTextTheme.bodySmall,
                    decoration: InputDecoration(
                        fillColor: AppColors.bgPrimary,
                        hintText: S.of(context).cityScreenSearchHint,
                        hintStyle:
                            const TextStyle(color: AppColors.textTertiary),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        )),
                  ),
                ),
                TextButton(
                  onPressed: () async {
                    ref
                        .read(cityScreenViewModelProvider.notifier)
                        .searchCity(textCityController.text);
                  },
                  child: Text(
                    S.of(context).citySecreenSearchBtn,
                    style: appTextTheme.bodySmall?.copyWith(
                      color: AppColors.colorPrimary,
                    ),
                  ),
                )
              ],
            ),
            Expanded(
                child: state.when(data: (data) {
              return Padding(
                padding: const EdgeInsets.only(top: 16),
                child: (data.isNotEmpty)
                    ? ListView.separated(
                        itemCount: data.length,
                        itemBuilder: (ctx, index) {
                          return InkWell(
                            onTap: () {
                              ref
                                  .read(cityScreenViewModelProvider.notifier)
                                  .navigateBackToHomeScreen(
                                    lat: data[index].lat,
                                    long: data[index].lon,
                                  );
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  data[index].name,
                                  style: appTextTheme.bodyMedium,
                                ),
                                Text(
                                  data[index].state ?? '',
                                  style: appTextTheme.bodySmall,
                                ),
                                Text(
                                  data[index].country ?? '',
                                  style: appTextTheme.bodySmall,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '${S.of(context).latitude} ${data[index].lat}',
                                      style: appTextTheme.labelSmall,
                                    ),
                                    const SizedBox(
                                      width: 16,
                                    ),
                                    Text(
                                      '${S.of(context).longitude} ${data[index].lon}',
                                      style: appTextTheme.labelSmall,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return const Divider(
                            color: AppColors.bgTertiary,
                          );
                        },
                      )
                    : Center(
                        child: Text(S.of(context).cityScreenEmptyResult),
                      ),
              );
            }, error: (error, _) {
              return Center(
                child: Text(S.of(context).cityScreenError),
              );
            }, loading: () {
              return const Center(
                child: CircularProgressIndicator(),
              );
            })),
          ],
        ),
      ),
    );
  }
}
