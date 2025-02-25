import 'package:dairy_management_app/core/components/custom_app_bar.dart';
import 'package:dairy_management_app/core/constants/navigation.dart';
import 'package:dairy_management_app/core/services/app_services.dart';
import 'package:dairy_management_app/features/auth/view/screens/screen_login.dart';
import 'package:dairy_management_app/features/dashboard/view/components/dashboard_grid_card.dart';
import 'package:dairy_management_app/features/dashboard/view/widgets/dashboard_summary.dart';
import 'package:dairy_management_app/features/driver/view/screens/screen_driver.dart';
import 'package:dairy_management_app/features/driver/view_model/bloc_driver/driver_bloc.dart';
import 'package:dairy_management_app/features/routes/view/screens/screen_routes.dart';
import 'package:dairy_management_app/features/routes/view_model/bloc_route/route_bloc.dart';
import 'package:dairy_management_app/features/store/view/screens/screen_store.dart';
import 'package:dairy_management_app/features/store/view_model/bloc_store/store_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenDashboard extends StatelessWidget {
  const ScreenDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    //Checking that if data is loaded or not.
    _loadData(context);

    return Scaffold(
      appBar: CustomAppBar(
        title: 'Dashboard',
        actions: [
          IconButton(
            onPressed: () {
              Nav.pushReplace(context, LoginScreen());
              AppServices.updateLogin = false;
            },
            icon: Icon(Icons.logout),
          ),
          // IconButton(
          //   onPressed: () {
          //     Nav.push(context, ScreenUserSide());
          //   },
          //   icon: Icon(Icons.accessible_forward_outlined),
          // ),
          // IconButton(
          //   onPressed: () {
          //     Nav.push(context, LandingScreen());
          //   },
          //   icon: Icon(Icons.add_a_photo),
          // ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: ListView(
          shrinkWrap: true,
          children: [
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                DashboardGridCard(
                  icon: Icons.route_outlined,
                  title: 'Routes',
                  onTap: () {
                    Nav.push(context, ScreenRoute());
                  },
                ),
                DashboardGridCard(
                  icon: Icons.people_alt_outlined,
                  title: 'Drivers',
                  onTap: () {
                    Nav.push(context, ScreenDriver());
                  },
                ),
                DashboardGridCard(
                  icon: Icons.shop,
                  title: 'Shops',
                  onTap: () {
                    Nav.push(context, ScreenStore());
                  },
                ),
              ],
            ),

            const SizedBox(height: 20),

            DashboardSummary(),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  void _loadData(BuildContext context) {
    //Checking that if data is loaded or not.
    final isDriverLoaded = context.read<DriverBloc>().state.maybeWhen(
      orElse: () => false,
      loaded: (_) => true,
    );
    final isStoreLoaded = context.read<StoreBloc>().state.maybeWhen(
      orElse: () => false,
      loaded: (_) => true,
    );
    final isRouteLoaded = context.read<RouteBloc>().state.maybeWhen(
      orElse: () => false,
      loaded: (_) => true,
    );

    //Load the data if not loaded previously.
    if (!isDriverLoaded) {
      context.read<DriverBloc>().add(DriverEvent.fetchDrivers());
    }
    if (!isStoreLoaded) {
      context.read<StoreBloc>().add(StoreEvent.fetchStores());
    }
    if (!isRouteLoaded) {
      context.read<RouteBloc>().add(RouteEvent.fetchRoutes());
    }

    context.read<RouteBloc>().updateStoreDaily();
  }
}
