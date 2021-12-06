import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_e_school_ui/app/app_color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'app/app_constants.dart';
import 'app/app_themes.dart';
import 'route/app_pages.dart';
import 'route/page_routes.dart';

void main() async {

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: AppColor.blue_upper,
    statusBarIconBrightness: Brightness.light,
    statusBarBrightness: Brightness.light,
  ));

  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();

  runApp(const ESchoolMainApp());
}

class ESchoolMainApp extends StatelessWidget {
  const ESchoolMainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(720, 1520),
      builder: () => GetMaterialApp(
        title: Constants.appName,
        initialRoute: Routes.splashScreen,
        debugShowCheckedModeBanner: false,
        getPages: AppPages.pages,
        theme: AppThemes.appTheme,
      ),
    );
  }
}
