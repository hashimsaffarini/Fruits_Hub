import 'package:flutter/material.dart';
import 'package:fruits_hub/core/helper/on_generate_routes.dart';
import 'package:fruits_hub/features/splash/ui/widgets/splash_view.dart';

void main() {
  runApp(const SplashView());
}

class FruitHub extends StatelessWidget {
  const FruitHub({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      onGenerateRoute: onGenerateRoutes,
      initialRoute: SplashView.routeName,
    );
  }
}
