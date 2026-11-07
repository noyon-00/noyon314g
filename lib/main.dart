import 'package:flutter/material.dart';
import 'package:noyon314g/auth/authgate.dart';
import 'package:noyon314g/login_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:noyon314g/Calculator_page.dart';
import 'package:noyon314g/Container_page.dart';
import 'package:noyon314g/Homepage.dart';
import 'Card_page.dart';
import 'Listview_page.dart';
import 'grid_view.dart';
import 'Registration_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://eeevfficsoxxtlavdbxv.supabase.co',
    anonKey: 'sb_publishable_Ui2DErvgw7XtrJ1aFjZgxg_sb3ksa-D',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Authgate());
  }
}
