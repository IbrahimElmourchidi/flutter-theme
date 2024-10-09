import 'package:demo_app/core/common/cubits/theme_mode_cubit/theme_mode_cubit.dart';
import 'package:demo_app/core/config/theme/app_colors.dart';
import 'package:demo_app/core/config/theme/app_fonts.dart';
import 'package:demo_app/core/config/theme/text_styles.dart';
import 'package:demo_app/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DemoScreen extends StatelessWidget {
  const DemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Demo Screen",
                style: AppTextStyles.headingH1,
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Enabled button"),
              ),
              const SizedBox(
                height: 20,
              ),
              const ElevatedButton(
                onPressed: null,
                child: Text("disabled button"),
              ),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                decoration: InputDecoration(hintText: 'hint'),
              ),
              const SizedBox(
                height: 10,
              ),
              const TextField(
                decoration: InputDecoration(hintText: 'hint'),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  context.read<ThemeModeCubit>().updateTheme(
                        context.isDarkMode ? ThemeMode.light : ThemeMode.dark,
                      );
                },
                child: Text("Toggle Theme"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
