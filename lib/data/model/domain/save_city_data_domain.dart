

import 'package:freezed_annotation/freezed_annotation.dart';

part 'save_city_data_domain.freezed.dart';

@freezed
class SaveCityDataDomain with _$SaveCityDataDomain {
  const factory SaveCityDataDomain({
    required String cityName,
    required String cityType,
    required Map<String, int> monthlyTemperatures,
}) = _SaveCityDataDomain;
}