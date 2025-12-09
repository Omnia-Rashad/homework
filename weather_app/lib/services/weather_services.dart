import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherServices {
  final String baseUrl = 'https://api.weatherapi.com/v1';
  final String apiKey = 'adc0eb67f3184b31afc110714250312';
  final Dio dio;

  WeatherServices(this.dio);

  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    try {
      Response response = await dio.get(
        '$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1',
      );
      WeatherModel weatherModel = WeatherModel.fromJson(response.data);

      return weatherModel;
    } on DioException catch (e) {
      final String errorMessage =
          e.response?.data['error']['message'] ?? 'Oops There was an error';
      throw Exception(errorMessage);
    } catch (e) {
      throw Exception('Oops There was an error');
    }
  }
}
