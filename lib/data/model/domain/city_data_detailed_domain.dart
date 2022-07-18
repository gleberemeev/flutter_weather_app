import 'dart:ffi';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'city_data_detailed_domain.freezed.dart';

@freezed
class CityDataDetailedDomain with _$CityDataDetailedDomain {
  const factory CityDataDetailedDomain({
    required Iterable<String> cities,
    required Iterable<String> cityTypes,
    required String cityName,
    required String cityType,
    required Map<String, int> monthlyTemperatures,
  }) = _CityDataDetailedDomain;
}
