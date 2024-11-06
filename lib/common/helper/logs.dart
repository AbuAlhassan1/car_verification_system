import 'dart:developer' as developer;
import 'package:car_verification_system/common/models/log_storage_model.dart';

void logMessage(String message) {
  LogStorage.addLog(message);
  developer.log(message); // Optional: Still send logs to console
}