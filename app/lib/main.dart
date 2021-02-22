
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'colors.dart';
import 'main_menu/main_menu.dart';

import 'bloc_provider.dart';

/// The app is wrapped by a [BlocProvider]. This allows the child widgets
/// to access other components throughout the hierarchy without the need
/// to pass those references around.
class TimelineApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return BlocProvider(
      child: MaterialApp(
        title: 'History & Future of Everything',
        theme: ThemeData(
            backgroundColor: background, scaffoldBackgroundColor: background),
        home: MenuPage(),
      ),
      platform: Theme.of(context).platform,
    );
  }
}

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: null, body: MainMenuWidget());
  }
}

void main() => runApp(TimelineApp());