import 'package:e_commerce/config.dart';
import 'package:e_commerce/core/cache/shared_pref.dart';
import 'package:e_commerce/my_app.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();


  CacheHelper.init();
  configureDependencies();
  runApp(const MyApp());
}

