import 'dart:io';

import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shingara/shingara.dart';

import 'app_routes/app_pages.dart';
import 'home/bindings/home_binding.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)..badCertificateCallback = (X509Certificate cert, String host, int port) => true;
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  HttpOverrides.global = MyHttpOverrides();

  //initialize some configuration
  await initialConfig();
  // Get.put(DashboardProvider.instance); // Register the singleton instance

  runApp(const MyApp());
}

Future<void> initialConfig() async {
  //used for init local preference such as getStorage.

  //prevent app orientation
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  //set status bar theme style and color
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
// class _MyAppState extends State<MyApp>  with WidgetsBindingObserver {

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //using screenUtil package for adaptive screen size
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) => child!,
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Plg",
        initialRoute: AppPages.INITIAL,
        initialBinding: HomeBinding(),
        getPages: AppPages.routes,
        theme: ThemeData(
          useMaterial3: false,
          primarySwatch: Colors.blue,
          brightness: Brightness.light,
          visualDensity: VisualDensity.adaptivePlatformDensity,

          textSelectionTheme: TextSelectionThemeData(cursorColor: Colors.red, selectionHandleColor: Colors.transparent),

          // colorScheme: ColorScheme.fromSeed(
          //     seedColor: Colors.white,
          //     surfaceTint: Colors.white,
          //     primary: Colors.white,
          //   primaryContainer: Colors.white
          // ),
          // useMaterial3: true,
        ),
      ),
    );
  }
}
