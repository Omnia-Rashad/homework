import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_wether_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_wether_cubit/get_weather_states.dart';
import 'package:weather_app/themes/color_theme.dart';
import 'package:weather_app/views/searching_view.dart';

class WeatherAppBar extends StatelessWidget implements PreferredSizeWidget {
  const WeatherAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetWeatherCubit, WeatherState>(
      builder: (context, state) {
        // Default color when no weather selected yet
        Color appBarColor = const Color(0xff2196F3);

        if (state is WeatherLoadedSuccessfullyState) {
          appBarColor = getThemeColor(state.weatherModel.weatherState);
        }

        return AppBar(
          backgroundColor: appBarColor,
          elevation: 3.5,
          shadowColor: Colors.black,
          title: const Text(
            'Weather',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SearchingView(),
                  ),
                );
              },
              icon: const Icon(Icons.search, color: Colors.white),
            ),
          ],
        );
      },
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
