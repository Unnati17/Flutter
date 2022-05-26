import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:music/config/theme/color_theme.dart';
import 'package:music/screens/list_of_songs.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  runApp(MaterialApp(
    theme: getColorTheme(),
    debugShowCheckedModeBanner: false,
    title: "Music App 2022",
    home: const ListOfSongs(),
  ));
}
