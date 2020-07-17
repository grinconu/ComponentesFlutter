import 'package:componentes/src/routes/routes.dart';
import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:componentes/src/pages/alert_page.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componetes App',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        // ... app-specific localization delegate[s] here
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', ''), // English, no country code
        const Locale('es', 'ES'), // Hebrew, no country code
      ],
      //home: HomePage(),
      initialRoute: '/',
      routes: routesApp(),
      //Esto es para identificar si la ruta no existe, se retorne a la ruta indicada en este caso AlertPage.
      onGenerateRoute: (settings){
        return MaterialPageRoute(
          builder: (context)=>AlertPage()
        );
      },
    );
  }
}