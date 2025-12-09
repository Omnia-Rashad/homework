import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_wether_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_wether_cubit/get_weather_states.dart';
import 'package:weather_app/themes/color_theme.dart';
import 'package:weather_app/views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: Builder(
        builder: (context) => BlocBuilder<GetWeatherCubit, WeatherState>(
          builder: (context, state) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                primarySwatch: getThemeColor(
                  BlocProvider.of<GetWeatherCubit>(
                    context,
                  ).weatherModel?.weatherState,
                ),
              ),
              home: HomeView(),
            );
          },
        ),
      ),
    );
  }
}
