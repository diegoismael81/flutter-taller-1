import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taller_1/pages/home_page.dart';
import 'package:taller_1/services/content_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<ContentProvider>(
      create: (_) => ContentProvider(),
    )
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ContentProvider>(
        create: (BuildContext context) => ContentProvider(),
        child: Consumer<ContentProvider>(builder: (context, provider, __) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Cities Temp',
            home: HomePage(),
          );
        }));
  }
}
