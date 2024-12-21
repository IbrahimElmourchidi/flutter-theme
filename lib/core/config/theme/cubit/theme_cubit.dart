import 'theme_state.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class ThemeCubit extends HydratedCubit<ThemeState> {
  ThemeCubit() : super(ThemeGreenLightState());

  void updateTheme(ThemeState newState) {
    emit(newState);
  }

  final String _jsonKey = 'themeMode';

  @override
  ThemeState? fromJson(Map<String, dynamic> json) {
    final savedMode = json[_jsonKey];
    if (savedMode == 'lightGreen') {
      return ThemeGreenLightState();
    } else if (savedMode == 'lightRed') {
      return ThemeRedLightState();
    } else if (savedMode == 'lightBlue') {
      return ThemeBlueLightState();
    } else if (savedMode == 'darkGreen') {
      return ThemeGreenDarkState();
    } else if (savedMode == 'darkRed') {
      return ThemeRedDarkState();
    } else if (savedMode == 'darkBlue') {
      return ThemeBlueDarkState();
    }
    return ThemeGreenLightState();
  }

  @override
  Map<String, dynamic>? toJson(ThemeState state) {
    if (state is ThemeGreenLightState) {
      return {_jsonKey: 'lightGreen'};
    } else if (state is ThemeRedLightState) {
      return {_jsonKey: 'lightRed'};
    } else if (state is ThemeBlueLightState) {
      return {_jsonKey: 'lightBlue'};
    } else if (state is ThemeGreenDarkState) {
      return {_jsonKey: 'darkGreen'};
    } else if (state is ThemeRedDarkState) {
      return {_jsonKey: 'darkRed'};
    } else if (state is ThemeBlueDarkState) {
      return {_jsonKey: 'darkBlue'};
    }
    return {_jsonKey: 'lightGreen'};
  }
}
