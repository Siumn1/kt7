import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';

part 'car.freezed.dart';
part 'car.g.dart';

class DoubleToStringConvert implements JsonConverter<double, String> {
  const DoubleToStringConvert();

  @override
  double fromJson(String json) {
    // TODO: implement fromJson
    return double.parse(json.replaceAll('\$', ''));
  }

  @override
  String toJson(double object) {
    // TODO: implement toJson
      return object.toString();
  }
}

@freezed
class Car with _$Car {
  factory Car({
    required int id,
    @JsonKey(name: "car_model") required String model,
    @JsonKey(name: "car") required String brand,
    @DoubleToStringConvert() required double price,
    required bool availability,
  }) = _Car;

  factory Car.fromJson(Map<String, dynamic> json) => _$CarFromJson(json);
}
