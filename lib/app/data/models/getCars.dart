import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt7/app/data/models/car.dart';

part 'getCars.freezed.dart';
part 'getCars.g.dart';

@freezed
class GetCars with _$GetCars {

  factory GetCars({
    @Default([]) List<Car> cars,
  }) = _GetCars;

  factory GetCars.fromJson(Map<String, dynamic> json) => _$GetCarsFromJson(json);
}