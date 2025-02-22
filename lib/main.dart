import 'package:dairy_management_app/core/constants/app_screen_size.dart';
import 'package:dairy_management_app/core/constants/app_theme.dart';
import 'package:dairy_management_app/core/services/hive_services.dart';
import 'package:dairy_management_app/features/dashboard/view/screens/screen_home.dart';
import 'package:dairy_management_app/features/driver/services/driver_services.dart';
import 'package:dairy_management_app/features/driver/view_model/bloc_driver/driver_bloc.dart';
import 'package:dairy_management_app/features/routes/services/routes_services.dart';
import 'package:dairy_management_app/features/routes/view_model/bloc_route/route_bloc.dart';
import 'package:dairy_management_app/features/store/services/store_services.dart';
import 'package:dairy_management_app/features/store/view_model/bloc_store/store_bloc.dart';
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
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (context) => StoreServices()),
        RepositoryProvider(create: (context) => RouteService()),
        RepositoryProvider(create: (context) => DriverServices()),
      ],

      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => DriverBloc(context.read<DriverServices>()),
          ),
          BlocProvider(
            create: (context) => StoreBloc(context.read<StoreServices>()),
          ),
          BlocProvider(
            create:
                (context) => RouteBloc(
                  routeServices: context.read<RouteService>(),
                  storeServices: context.read<StoreServices>(),
                  driverServices: context.read<DriverServices>(),
                ),
          ),
          //
        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: AppTheme.lightTheme,
          debugShowCheckedModeBanner: false,
          home: const ScreenHome(),
        ),
      ),
    );
  }
}
