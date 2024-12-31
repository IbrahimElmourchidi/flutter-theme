import 'package:demo_app/core/utils/theme_mapper.dart';

import '../core/config/theme/app_colors.dart';
import '../core/config/theme/app_text_styles.dart';
import '../core/config/theme/extensions/theme_extensions.dart';

import '../core/utils/theme_functions.dart';
import 'package:flutter/material.dart';

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
                    toggleMode(context);
                  } else {
                    toggleMode(context);
                  }
                },
                child: const Text("Toggle Theme"),
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      toggleTheme(context, ThemeNames.green);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryLightGreen300,
                    ),
                    child: const SizedBox(),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      toggleTheme(context, ThemeNames.red);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryLightRed300,
                    ),
                    child: const SizedBox(),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      toggleTheme(context, ThemeNames.blue);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryLightBlue300,
                    ),
                    child: const SizedBox(),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      toggleTheme(context, ThemeNames.yellow);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryLightYellow300,
                    ),
                    child: const SizedBox(),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      toggleTheme(context, ThemeNames.purple);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryLightPurple300,
                    ),
                    child: const SizedBox(),
                  ),
                  const SizedBox(width: 10),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
