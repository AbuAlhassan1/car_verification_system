import 'dart:convert';

ListOfOrdersModel listOfOrdersModelFromJson(String str) => ListOfOrdersModel.fromJson(json.decode(str));
String listOfOrdersModelToJson(ListOfOrdersModel data) => json.encode(data.toJson());

class ListOfOrdersModel {
  final bool? error;
  final dynamic message;
  final List<Datum>? data;
  final int? count;

  ListOfOrdersModel({
    this.error,
    this.message,
    this.data,
    this.count,
  });

  factory ListOfOrdersModel.fromJson(Map<String, dynamic> json) => ListOfOrdersModel(
    error: json["error"],
    message: json["message"],
    data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
    count: json["count"],
  );

  Map<String, dynamic> toJson() => {
    "error": error,
    "message": message,
    "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
    "count": count,
  };
}

class Datum {
  final String? id;
  final int? orderNumber;
  final String? restaurantOrderNo;
  final double? price;
  final String? customerPhoneNumber;
  final String? restaurantName;
  final String? districtName;
  final int? status;
  final String? restaurantNote;
  final double? car_verification_systemFee;

  Datum({
    this.id,
    this.orderNumber,
    this.restaurantOrderNo,
    this.price,
    this.customerPhoneNumber,
    this.restaurantName,
    this.districtName,
    this.status,
    this.restaurantNote,
    this.car_verification_systemFee,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    orderNumber: json["orderNumber"],
    restaurantOrderNo: json["restaurantOrderNo"],
    price: json["price"],
    customerPhoneNumber: json["customerPhoneNumber"],
    restaurantName: json["restaurantName"],
    districtName: json["districtName"],
    status: json["status"],
    restaurantNote: json["restaurantNote"],
    car_verification_systemFee: json["car_verification_systemFee"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "orderNumber": orderNumber,
    "restaurantOrderNo": restaurantOrderNo,
    "price": price,
    "customerPhoneNumber": customerPhoneNumber,
    "restaurantName": restaurantName,
    "districtName": districtName,
    "status": status,
    "restaurantNote": restaurantNote,
    "car_verification_systemFee": car_verification_systemFee,
  };
}