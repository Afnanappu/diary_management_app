import 'package:dairy_management_app/core/constants/app_colors.dart';
import 'package:dairy_management_app/features/driver/view_model/bloc_driver/driver_bloc.dart';
import 'package:dairy_management_app/features/routes/view_model/bloc_route/route_bloc.dart';
import 'package:dairy_management_app/features/store/view_model/bloc_store/store_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardSummary extends StatelessWidget {
  const DashboardSummary({super.key});

  @override
  Widget build(BuildContext context) {
    int totalRoutes = context.watch<RouteBloc>().state.maybeMap(
      loaded: (state) => state.routeList.length,
      orElse: () => 0,
    );

    int totalDrivers = context.watch<DriverBloc>().state.maybeMap(
      loaded: (state) => state.driverList.length,
      orElse: () => 0,
    );

    int totalStores = context.watch<StoreBloc>().state.maybeMap(
      loaded: (state) => state.storeList.length,
      orElse: () => 0,
    );

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        decoration: BoxDecoration(
          color: AppColors.primaryBackground,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            _SummaryRow(
              title: 'Routes',
              count: totalRoutes,
              icon: Icons.route_outlined,
              color: AppColors.primary,
            ),
            const Divider(thickness: 1.2, color: Colors.white38),
            _SummaryRow(
              title: 'Drivers',
              count: totalDrivers,
              icon: Icons.person_outline,
              color: AppColors.primary,
            ),
            const Divider(thickness: 1.2, color: Colors.white38),
            _SummaryRow(
              title: 'Stores',
              count: totalStores,
              icon: Icons.storefront_outlined,
              color: AppColors.primary,
            ),
          ],
        ),
      ),
    );
  }
}

class _SummaryRow extends StatelessWidget {
  final String title;
  final int count;
  final IconData icon;
  final Color color;

  const _SummaryRow({
    required this.title,
    required this.count,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 18,
          backgroundColor: color.withValues(alpha: 0.2),
          child: Icon(icon, color: color, size: 20),
        ),
        const SizedBox(width: 15),
        Expanded(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppColors.primary,
            ),
          ),
        ),
        Text(
          count.toString(),
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: AppColors.primary,
          ),
        ),
      ],
    );
  }
}
