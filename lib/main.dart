import 'package:flutter/material.dart';
import 'package:flutter_native_cod3r/providers/flutter_native_cod3r.dart';
import 'package:flutter_native_cod3r/screens/place_detail_screen.dart';
import 'package:flutter_native_cod3r/screens/place_form_screen.dart';
import 'package:flutter_native_cod3r/screens/places_list_screen.dart';
import 'package:flutter_native_cod3r/utils/app_routes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => GreatPlaces(),
      child: MaterialApp(
        title: 'Great Places',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: Colors.indigo,
            secondary: Colors.amber,
          ),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: const PlacesListScreen(),
        routes: {
          AppRoutes.placeForm: (ctx) => const PlaceFormScreen(),
          AppRoutes.placeDetail: (ctx) => const PlaceDetailScreen(),
        },
      ),
    );
  }
}
