
import '../model/domain/city_data_detailed_domain.dart';
import '../model/domain/city_data_domain.dart';
import '../model/domain/save_city_data_domain.dart';
import '../weather_app_db.dart';


/// An interface hiding implementation details, internal variables, mixin classes, etc
abstract class CityRepository {
  Future<void> populateDatabaseIfNeeded();
  Future<List<String>> fetchAllMonths();
  Future<List<String>> fetchAllCities();
  Future<List<String>> fetchAllSeasons();
  Future<CityDataDomain?> fetchCityDataByCity(String cityName);
  Future<CityDataDomain?> fetchCityDataBySeason(String seasonName);
  Future<CityDataDomain?> fetchSelectedCityData();
  Stream<List<TemperatureData>> listenTemperatureUpdates();
  Stream<List<CityData>> listenCityUpdates();
  Future<void> setCitySelected(String selectedCityName, String previousCityName);
  Future<void> setSeasonSelected(String selectedSeasonName, String previousSeasonName);
  Future<CityDataDetailedDomain?> fetchCityDetailedData();
  Future<void> saveData(SaveCityDataDomain saveDataRequest);
}