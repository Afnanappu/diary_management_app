import 'package:dairy_management_app/core/components/custom_app_bar.dart';
import 'package:dairy_management_app/core/constants/navigation.dart';
import 'package:dairy_management_app/features/dashboard/view/components/dashboard_grid_card.dart';
import 'package:dairy_management_app/features/driver/view/screens/screen_driver.dart';
import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    // final cardHeight = AppScreenSize.height;

    return Scaffold(
      appBar: CustomAppBar(title: 'Dashboard'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: ListView(
          shrinkWrap: true,
          children: [
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                DashboardGridCard(icon: Icons.route_outlined, title: 'Routes'),
                DashboardGridCard(
                  icon: Icons.people_alt_outlined,
                  title: 'Drivers',
                  onTap: () {
                    Nav.push(context, ScreenDriver());
                  },
                ),
                DashboardGridCard(icon: Icons.shop, title: 'Shops'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
