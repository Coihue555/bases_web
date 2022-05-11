import 'package:bases_web/locator.dart';
import 'package:bases_web/services/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:bases_web/ui/shared/custom_flat_button.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        return (constraints.maxWidth > 520)
                ? const _TabletDesktopMenu()
                : const _MobileMenu();
      },
    );
  }
}

class _TabletDesktopMenu extends StatelessWidget {
  const _TabletDesktopMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      child: Row(
        children: [
          CustomFlatButton(
            text: 'Contador Stateful',
            onPress: () => locator<NavigationService>().navigateTo('/stateful'),
            // onPress: () => Navigator.pushNamed(context, '/stateful'),
            color: Colors.black,),
          const SizedBox(width: 10,),
          CustomFlatButton(
            text: 'Contador Provider',
            onPress: () => locator<NavigationService>().navigateTo('/provider'),
            color: Colors.black,),
          const SizedBox(width: 10,),
          CustomFlatButton(
            text: 'Tercer pagina',
            onPress: () => locator<NavigationService>().navigateTo('/abcfu'),
            color: Colors.black,),
          const SizedBox(width: 10,),
          CustomFlatButton(
            text: 'Stateful 100',
            onPress: () => locator<NavigationService>().navigateTo('/stateful/100'),
            color: Colors.black,),
          const SizedBox(width: 10,),
          CustomFlatButton(
            text: 'Provider 200',
            onPress: () => locator<NavigationService>().navigateTo('/provider?q=200'),
            color: Colors.black,),
        ],
      ),
    );
  }
}

class _MobileMenu extends StatelessWidget {
  const _MobileMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomFlatButton(
            text: 'Contador Stateful',
            onPress: () => locator<NavigationService>().navigateTo('/stateful'),
            // onPress: () => Navigator.pushNamed(context, '/stateful'),
            color: Colors.black,),
          const SizedBox(width: 10,),
          CustomFlatButton(
            text: 'Contador Provider',
            onPress: () => locator<NavigationService>().navigateTo('/provider'),
            // onPress: () => Navigator.pushNamed(context, '/provider'),
            color: Colors.black,),
          const SizedBox(width: 10,),
          CustomFlatButton(
            text: 'Tercer pagina',
            onPress: () => locator<NavigationService>().navigateTo('/abcfu'),
            // onPress: () => Navigator.pushNamed(context, '/abcfu'),
            color: Colors.black,),

          const SizedBox(width: 10,),
          CustomFlatButton(
            text: 'Stateful 100',
            onPress: () => locator<NavigationService>().navigateTo('/stateful/100'),
            // onPress: () => Navigator.pushNamed(context, '/abcfu'),
            color: Colors.black,),
        ],
      ),
    );
  }
}