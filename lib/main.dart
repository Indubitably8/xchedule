import 'package:flutter/material.dart';
import 'package:localstorage/localstorage.dart';
import 'package:xchedule/display/themes.dart';
import 'package:xchedule/global_variables/supabase_db.dart';
import 'package:xchedule/schedule/schedule_data.dart';

import 'display/home_page.dart';

/*
Main:
What the app runs on startup
 */

Future<void> main() async {
  //Once app opened, builds the app itself
  SupaBaseDB.initialize();

  //Initializes localstorage
  await initLocalStorage();

  //Fetches data from supabase asynchronously on startup
  DateTime now = DateTime.now();
  ScheduleData.addDailyData(
      DateTime(now.year, now.month, now.day).subtract(const Duration(days: 50)),
      DateTime(now.year, now.month, now.day).add(const Duration(days: 50)));
  //Also fetches asynchrously, and only fetched here; fetches all available data at once
  ScheduleData.getCoCurriculars().then((result) {
    //Assigns result to value on completion
    ScheduleData.coCurriculars = result;
  });

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Themes.blueTheme,
      //Gets rid of that pesky debug banner
      debugShowCheckedModeBanner: false,
      title: 'Xchedule',
      //HomePage Wrapped in DefaultTextStyle so that we don't need to specify EVERY TIME we display text
      home: DefaultTextStyle(
        style: const TextStyle(
            color: Colors.black, fontSize: 25, decoration: null),
        child: HomePage(),
      ),
    );
  }
}
