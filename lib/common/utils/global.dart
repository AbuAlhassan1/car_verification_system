import 'package:car_verification_system/auth/utils/interfaces/auth_interface.dart';
import 'package:car_verification_system/auth/utils/repositories/auth_repository.dart';
import 'package:car_verification_system/common/utils/interfaces/http_request_interface.dart';
import 'package:car_verification_system/common/utils/interfaces/storage_interface.dart';
import 'package:car_verification_system/common/utils/repositories/http_request_repository.dart';
import 'package:car_verification_system/common/utils/repositories/secure_storage_repository.dart';
import 'package:car_verification_system/home/utils/interfaces/orders_interface.dart';
import 'package:car_verification_system/home/utils/repositories/orders_repository.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void setup(){
  locator.registerLazySingleton<StorageInterFace>(() => SecureStorageRepository());
  locator.registerLazySingleton<HttpRequestInterFace>(() => HttpRequestRepository());
  locator.registerLazySingleton<AuthInterface>(() => AuthRepository());
  locator.registerLazySingleton<OrdersInterface>(() => OrdersRepository());
}