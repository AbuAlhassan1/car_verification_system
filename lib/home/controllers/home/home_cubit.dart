import 'package:bloc/bloc.dart';
import 'package:car_verification_system/common/utils/global.dart';
import 'package:car_verification_system/home/utils/interfaces/orders_interface.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  final OrdersInterface ordersRepository = locator.get<OrdersInterface>();
}
