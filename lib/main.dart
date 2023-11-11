import 'package:crypto_app/common/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'common/constants/color.dart';
import 'common/utils/app_bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  Paint.enableDithering = true;
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: primaryColor, // status bar color
  ));
  Bloc.observer = AppBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: const [],
      child: MultiBlocProvider(
        providers: const [],
        child: MaterialApp.router(
          routerConfig: goRoutes,
          debugShowCheckedModeBanner: false,
          theme: ThemeData.light().copyWith(
            appBarTheme: const AppBarTheme(
                backgroundColor: primaryColor,
                elevation: 0,
                iconTheme: IconThemeData(color: Colors.white)),
            scaffoldBackgroundColor: bgColor,
          ),
          themeMode: ThemeMode.light,
        ),
      ),
    );
  }
}
