import 'package:docdoc/core/routing/app_router.dart';
import 'package:docdoc/core/routing/routes.dart';
import 'package:docdoc/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  final AppRouter appRouter;
  const DocApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        title: "Doc App",
        theme: ThemeData(
          primaryColor: ColorsManager.mainBlue,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.onBordingScreen,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}