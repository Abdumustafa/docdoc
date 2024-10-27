import 'package:docdoc/core/routing/app_router.dart';
import 'package:docdoc/doc_app.dart';
import 'package:flutter/material.dart';
import 'core/di/dependency_injection.dart';

void main() {
  setupGetIt();
  runApp( DocApp(appRouter: AppRouter(),),);
}
