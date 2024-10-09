import 'package:demo_app/core/common/cubits/theme_mode_cubit/theme_mode_cubit.dart';
import 'package:demo_app/core/config/theme/theme_data/theme_data_dark.dart';
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
        BlocProvider(create: (_) => ThemeModeCubit()),
      ],
      child: BlocBuilder<ThemeModeCubit, ThemeMode>(
        builder: (context, mode) {
          return MaterialApp(
            theme: getThemeDataLight(),
            darkTheme: getThemeDataDark(),
            themeMode: mode,
            home: DemoScreen(),
          );
        },
      ),
    );
  }
}
