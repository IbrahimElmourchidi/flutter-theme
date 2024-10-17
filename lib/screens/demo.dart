import 'package:demo_app/core/config/theme/app_colors.dart';
import 'package:demo_app/core/config/theme/app_text_styles.dart';
import 'package:demo_app/core/config/theme/cubit/theme_cubit.dart';
import 'package:demo_app/core/config/theme/extensions/custom_colors_extension.dart';
import 'package:demo_app/core/config/theme/extensions/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DemoScreen extends StatelessWidget {
  DemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                style: AppTextStyles.mRegular.copyWith(
                  color: context.customColors.secondaryColor,
                ),
                textAlign: TextAlign.center,
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
              ElevatedButton(
                onPressed: null,
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 48)),
                child: const Text("disabled button"),
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
                  if (context.isDarkMode) {
                    context.read<ThemeCubit>().updateTheme(ThemeMode.light);
                  } else {
                    context.read<ThemeCubit>().updateTheme(ThemeMode.dark);
                  }
                },
                child: const Text("Toggle Theme"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
