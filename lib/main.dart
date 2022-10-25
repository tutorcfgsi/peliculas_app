import 'package:flutter/material.dart';
import 'package:peliculas_app/screens/screens.dart';
import 'package:provider/provider.dart';
import 'package:peliculas_app/providers/movies_provider.dart';

void main() => runApp(const AppState());

class AppState extends StatelessWidget {
  const AppState({super.key});

  @override
  Widget build(BuildContext context) {
    // Vamos a usar un Widget de tipo MultiProvider porque si tenemos más de 1
    //  podemos añadirlo al array que vamos a crear
    return MultiProvider(
        providers: [ChangeNotifierProvider(create: (_) => MoviesProvider())],
        child: const MyApp());
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Películas',
      initialRoute: 'home',
      routes: {
        'home': (_) => const HomeScreen(),
        'details': (_) => const DetailsScreen()
      },
      theme: ThemeData.light()
          .copyWith(appBarTheme: const AppBarTheme(color: Colors.indigo)),
    );
  }
}
