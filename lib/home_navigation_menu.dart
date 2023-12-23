import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';
import 'package:services_ng/features/home/controllers/navigation_controller.dart';
import 'package:services_ng/utils/size_config/size_config.dart';

class HomeNavigationMenu extends StatelessWidget {
  const HomeNavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    var navigationController = context.watch<NavigationController>();
    return Scaffold(
      bottomNavigationBar: NavigationBar(
          height: getProportionateScreenHeight(60),
          selectedIndex: navigationController.selectedIndex,
          onDestinationSelected: (value) =>
              navigationController.onDestinationSelected(value),
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(
                icon: Icon(Iconsax.search_normal), label: 'search'),
            NavigationDestination(
                icon: Icon(Iconsax.save_2), label: 'Bookings'),
            NavigationDestination(
                icon: Icon(Iconsax.profile_2user), label: 'Profile'),
          ]),
      body: navigationController.screens[navigationController.selectedIndex],
    );
  }
}
