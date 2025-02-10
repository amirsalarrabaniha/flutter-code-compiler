import 'dart:io';

import 'package:code_editor/core/config/theme_data.dart';
import 'package:code_editor/presenter/editor/provider/editor_provider.dart';
import 'package:code_editor/routes/routes.dart';
import 'package:code_editor/setup.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupMain();
  setupEditor();
  HttpOverrides.global = MyHttpOverrides();
  runApp(const MyApp());
  setupTapsell();
}

void setupTapsell() {
  final appId =
      "oknhqbmcpbtiesfloarjjplnqdrkkqpfnfettjmgknedlkcsqgooqkelmslbdaplktbboq";
  // TapsellPlus.instance.initialize(appId);
  // TapsellPlus.instance.setDebugMode(LogLevel.Debug);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => GetIt.instance.get<EditorProvider>(),
        )
      ],
      child: MaterialApp.router(
        routerConfig: Routes.router,
        themeMode: ThemeMode.dark,
        darkTheme: ThemeConfig.darkTheme,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
      ),
    );
  }
}
class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}