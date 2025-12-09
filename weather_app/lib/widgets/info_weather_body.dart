import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_wether_cubit/get_weather_cubit.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/themes/color_theme.dart';

class InfoWeatherBody extends StatelessWidget {
  const InfoWeatherBody({super.key, required this.weather});
  final WeatherModel weather;

  @override
  Widget build(BuildContext context) {
    WeatherModel weatherModel = BlocProvider.of<GetWeatherCubit>(
      context,
    ).weatherModel!;

    weatherModel.image!.contains('https:');

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            getThemeColor(weatherModel.weatherState),
            getThemeColor(weatherModel.weatherState)[300]!,
            getThemeColor(weatherModel.weatherState)[50]!,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            weatherModel.cityName,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
          ),

          Text(
            'updated at ${weatherModel.date.hour}:${weatherModel.date.minute}',
            style: TextStyle(fontSize: 16),
          ),

          SizedBox(height: 32),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network(
                'https:${weatherModel.image!}',
                // width: 70,
                // height: 70,
              ),

              Text(
                '${weatherModel.temp.round()}',
                style: TextStyle(fontSize: 36),
              ),

              Column(
                children: [
                  Text('Max: ${weatherModel.maxTemp.round()}'),
                  Text('Min: ${weatherModel.minTemp.round()}'),
                ],
              ),
            ],
          ),

          SizedBox(height: 32),

          Text(
            weatherModel.weatherState,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
