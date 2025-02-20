import 'package:dairy_management_app/core/constants/app_screen_size.dart';
import 'package:dairy_management_app/core/constants/app_theme.dart';
import 'package:dairy_management_app/core/services/hive_services.dart';
import 'package:dairy_management_app/features/dashboard/view/screens/screen_home.dart';
import 'package:dairy_management_app/features/driver/view_model/bloc/bloc_driver/driver_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await HiveServices.initialize(); //Initialize Hive and all other models boxes

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppScreenSize.initialize(
      context,
    ); // To initialize the screen size that will be used later in app.
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => DriverBloc()),
        //
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: AppTheme.lightTheme,
        debugShowCheckedModeBanner: false,
        home: const ScreenHome(),
      ),
    );
  }
}
