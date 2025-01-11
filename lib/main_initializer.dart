part of 'main.dart';

Future<ProviderContainer> _mainInitializer() async {
  final container = ProviderContainer(overrides: []);
  await dotenv.load(fileName: "assets/.env");
  return container;
}
