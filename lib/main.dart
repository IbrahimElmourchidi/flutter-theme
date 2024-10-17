import 'package:demo_app/core/config/theme/cubit/theme_cubit.dart';
import 'package:demo_app/core/config/theme/theme_data/them_data_dark.dart';
import 'package:demo_app/core/config/theme/theme_data/theme_data_light.dart';
import 'package:demo_app/screens/demo.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getApplicationDocumentsDirectory(),
  );
  runApp(const DemoApp());
}

class DemoApp extends StatelessWidget {
  const DemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => ThemeCubit()),
      ],
      child: BlocBuilder<ThemeCubit, ThemeMode>(
        builder: (context, newMode) {
          return MaterialApp(
            theme: getLightTheme(),
            darkTheme: getDarkTheme(),
            themeMode: newMode,
            home: DemoScreen(),
          );
        },
      ),
    );
  }
}
