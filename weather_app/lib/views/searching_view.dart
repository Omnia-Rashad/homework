import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_wether_cubit/get_weather_cubit.dart';

class SearchingView extends StatelessWidget {
  const SearchingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Search a City',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Center(
          child: TextField(
            onSubmitted: (value) async {
              var getweathercubit = BlocProvider.of<GetWeatherCubit>(context);
              await getweathercubit.getWeather(cityName: value);
              Navigator.pop(context);
            },

            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(color: Colors.blue),
              ),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 28,
              ),
              labelText: ('Search'),
              floatingLabelBehavior: FloatingLabelBehavior.auto,

              labelStyle: TextStyle(color: Colors.blue),
              hintText: 'Enter City Name',

              // hintStyle: TextStyle(color: Colors.grey),
              suffixIcon: Icon(Icons.search, color: Colors.black),

              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue),
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue, width: 1.5),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
