import 'package:car_verification_system/common/utils/global.dart';
import 'package:car_verification_system/common/utils/interfaces/http_request_interface.dart';
import 'package:car_verification_system/home/utils/interfaces/orders_interface.dart';

class OrdersRepository implements OrdersInterface {

  HttpRequestInterFace httpRequest = locator.get<HttpRequestInterFace>();
}