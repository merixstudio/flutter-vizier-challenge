part of 'app_theme.dart';

ThemeData get lightTheme {
  return ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.white,
      iconTheme: const IconThemeData(
        color: AppColors.black,
      ),
      elevation: 0.0,
      titleTextStyle: AppTextStyles.h5(),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.white,
      unselectedIconTheme: const IconThemeData(
        color: AppColors.gray300,
      ),
      selectedItemColor: AppColors.primary100,
      selectedLabelStyle: AppTextStyles.caption3(),
      showUnselectedLabels: false,
    ),
    brightness: Brightness.light,
    colorScheme: ColorScheme.fromSwatch().copyWith(
      secondary: AppColors.primary100,
    ),
    dividerTheme: const DividerThemeData(
      color: AppColors.gray400,
      space: 0.0,
      thickness: 1.0,
    ),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: AppColors.primary100,
    ),
    scaffoldBackgroundColor: AppColors.white,
    primaryColor: AppColors.primary100,
    textTheme: TextTheme(
      bodyText1: AppTextStyles.text1(),
      bodyText2: AppTextStyles.text2(),
      button: AppTextStyles.button.defaultStyle(),
      caption: AppTextStyles.caption1(),
      headline1: AppTextStyles.h1(),
      headline2: AppTextStyles.h2(),
      headline3: AppTextStyles.h3(),
      headline4: AppTextStyles.h4(),
      headline5: AppTextStyles.h5(),
      headline6: AppTextStyles.h6(),
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: AppColors.black,
    ),
    useMaterial3: true,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
