import 'package:flutter/material.dart';
import 'package:flutter_config/flutter_config.dart';
import 'app_main.dart';
import 'app_bootstrapper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterConfig.loadEnvVariables();
  await AppBootstrapper.init(
    mainAppWidget: const AppMain(),
    runApp: runApp,
  );
}
