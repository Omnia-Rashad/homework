import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_wether_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_wether_cubit/get_weather_states.dart';
import 'package:weather_app/widgets/info_weather_body.dart';
import 'package:weather_app/widgets/no_weather_body.dart';
import 'package:weather_app/widgets/weather_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WeatherAppBar(),

      body: BlocBuilder<GetWeatherCubit, WeatherState>(
        builder: (context, state) {
          if (state is WeatherInitialState) {
            return NoWeatherBody();
          } else if (state is WeatherLoadedSuccessfullyState) {
            return InfoWeatherBody(weather: state.weatherModel);
          } else {
            return Center(child: Text('Failed to Load Weather Data'));
          }
        },
      ),
    );
  }
}
