import 'package:weather_app/util/extensions.dart';

const int _temperatureTextLength = 5;

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
    final truncatedTemperatureText = temperatureValue.toString()
      .truncate(max: _temperatureTextLength);
    return "$truncatedTemperatureText °C";
  }
}

class _KelvinTemperatureStrategy extends _TemperatureDisplayStrategy {
  static const double kelvinCelsiusDifference = 273.15;

  @override
  String printTemperature(int temperatureValue) {
    final kelvinTemperature = temperatureValue + kelvinCelsiusDifference;
    final truncatedTemperatureText = kelvinTemperature.toString()
        .truncate(max: _temperatureTextLength);
    return "$truncatedTemperatureText °K";
  }
}

class _FahrenheitTemperatureStrategy extends _TemperatureDisplayStrategy {
  @override
  String printTemperature(int temperatureValue) {
    final fahrenheitTempValue = temperatureValue * 9 / 5 + 32;
    final truncatedTemperatureText = fahrenheitTempValue.toString()
        .truncate(max: _temperatureTextLength);
    return "$truncatedTemperatureText °F";
  }
}
