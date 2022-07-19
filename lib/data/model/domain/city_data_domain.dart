import 'package:freezed_annotation/freezed_annotation.dart';

part 'city_data_domain.freezed.dart';

@freezed
class CityDataDomain with _$CityDataDomain {
  const factory CityDataDomain({
    required String cityName,
    required String seasonName,
    required String cityType,
    required int temperature,
  }) = _CityDataDomain;
}
