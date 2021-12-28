import 'package:flutter/material.dart';

import 'src/saga.dart';
import 'src/settings/settings_controller.dart';
import 'src/settings/settings_service.dart';

void main() async {
  final settingsController = SettingsController(SettingsService());
  await settingsController.loadSettings();

  runApp(SagaApp(settingsController: settingsController));
}
