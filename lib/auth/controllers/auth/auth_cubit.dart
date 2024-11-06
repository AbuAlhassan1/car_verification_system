import 'package:car_verification_system/auth/utils/interfaces/auth_interface.dart';
import 'package:car_verification_system/common/utils/global.dart';
import 'package:car_verification_system/common/utils/interfaces/storage_interface.dart';
import 'package:car_verification_system/constants/secure_storage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  final AuthInterface authRepository = locator.get<AuthInterface>();
  final StorageInterFace storage = locator.get<StorageInterFace>();
  bool isLoggedIn = false;

  Future<void> onAppInit() async {
    final token = await storage.read(secureStorageUserInfo);
    if (token != null) {
      isLoggedIn = true;
    } else {
      isLoggedIn = false;
    }
  }

  Future<bool> login(String email, String password) async {
    return true;
  }

  Future<void> logout() async {
    await storage.delete(secureStorageUserInfo);
    isLoggedIn = false;
    emit(AuthInitial());
  }
}