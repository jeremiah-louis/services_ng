import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:services_ng/common/widgets/app_bar.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyCustomAppBar(
        title: 'Notifications',
        suffixIcon: Iconsax.more4,
        prefixIcon: Iconsax.arrow_left_24,
      ),
      body: Column(),
    );
  }
}
