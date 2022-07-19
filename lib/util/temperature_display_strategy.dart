
enum TemperatureDisplayFormat {
  celsius,
  kelvin,
  fahrenheit,
}

class TemperatureDisplayDecorator {
  String printTemperature(int temperatureValue, TemperatureDisplayFormat format) {
    final _TemperatureDisplayStrategy strategy;
    switch (format) {
      case TemperatureDisplayFormat.celsius:
        strategy = _CelsiusTemperatureStrategy();
        break;
      case TemperatureDisplayFormat.kelvin:
        strategy = _KelvinTemperatureStrategy();
        break;
      case TemperatureDisplayFormat.fahrenheit:
        strategy = _FahrenheitTemperatureStrategy();
        break;
    }
    return strategy.printTemperature(temperatureValue);
  }
}

abstract class _TemperatureDisplayStrategy {
  String printTemperature(int temperatureValue);
}

class _CelsiusTemperatureStrategy extends _TemperatureDisplayStrategy {
  @override
  String printTemperature(int temperatureValue) {
    return "$temperatureValue °C";
  }
}

class _KelvinTemperatureStrategy extends _TemperatureDisplayStrategy {
  static const double kelvinCelsiusDifference = 273.15;

  @override
  String printTemperature(int temperatureValue) {
    final kelvinTemperature = temperatureValue + kelvinCelsiusDifference;
    return "$kelvinTemperature °K";
  }
}

class _FahrenheitTemperatureStrategy extends _TemperatureDisplayStrategy {
  @override
  String printTemperature(int temperatureValue) {
    final fahrenheitTempValue = temperatureValue * 9 / 5 + 32;
    return "$fahrenheitTempValue °F";
  }

}