import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:velog_exercise/presentation/feat/provider/provider/count_provider.dart';
import 'package:velog_exercise/presentation/feat/provider/widget/provider_layout.dart';
import 'package:velog_exercise/presentation/widget/common/scaffold_layout.dart';

class ProviderScreen extends StatelessWidget {
  const ProviderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => CountProvider(),
      child: const ScaffoldLayout(
        child: ProviderLayout(),
      ),
    );
  }
}
