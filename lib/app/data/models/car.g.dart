// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CarImpl _$$CarImplFromJson(Map<String, dynamic> json) => _$CarImpl(
      id: json['id'] as int,
      model: json['car_model'] as String,
      brand: json['car'] as String,
      price: const DoubleToStringConvert().fromJson(json['price'] as String),
      availability: json['availability'] as bool,
    );

Map<String, dynamic> _$$CarImplToJson(_$CarImpl instance) => <String, dynamic>{
      'id': instance.id,
      'car_model': instance.model,
      'car': instance.brand,
      'price': const DoubleToStringConvert().toJson(instance.price),
      'availability': instance.availability,
    };
