part of style;

class Palette {
  static const primaryColor = Color(0xff13b9fd);
  static const primaryDarkColor = Color(0xff0089ca);
  static const primaryLightColor = Color(0xff6debff);

  static const secondaryColor = Color(0xff00d787);
  static const secondaryDarkColor = Color(0xff00a459);
  static const secondaryLightColor = Color(0xff62ffb7);

  static const primaryTextColor = Color(0xffffffff);
  static const secondaryTextColor = Color(0xffffffff);

  static const scaffoldBackgroundColor = Color(0xfff7f7fb);

  static const mystic = Color(0xffdfe3ee);
  static const charade = Color(0xff252a33);
  static const coralRed = Color(0xffff4242);
  static const polar = Color(0xffeffbf9);
}

class AppColor {
  static const Color background = Color(0xFFF5F5F5);
  static const Color white = Colors.white;
  static const Color tileBackground = Color.fromRGBO(248, 248, 248, 1);
  static const Color buttonGradient1 = Color.fromRGBO(228, 161, 18, 1);
  static const Color buttonGradient2 = Color.fromRGBO(254, 201, 25, 1);
  static const Color tablet = Color.fromRGBO(255, 208, 30, 1);

  static const Color categoryButtonActiveColor =
      Color.fromRGBO(255, 208, 30, 1);
  static const Color categoryButtonDeActiveColor =
      Color.fromRGBO(246, 246, 246, 1);

  static Color categoryButtonColor = const Color(0xFFF6F6F6);
  static Color buttonBlueColor = const Color(0xFF007AFF);
  static Color deliveredTimeColor = const Color(0xFF2CBE51);
  static Color profilePageAppBarColor = const Color(0xFFFFD01E);
  static Color iconBlackColor = const Color(0xFF211F1F);
  static Color green = const Color(0xFF34C759);
  static Color black = Colors.black;
  static Color orderBackground = const Color(0xFFFCFCFC);
  static Color readyFoodColor = const Color(0xFFFF9500);
}

class AppText {
  static const String location = 'Местоположения';
  static const String subLocation = 'Что вы хотите заказать сегодня?';

  static const String menu = 'Меню';
  static const String locations = 'Филиалы';
  static const String cart = 'Мои заказы';
  static const String orders = 'Корзина';
  static const String profile = 'Профиль';
  static const String remove = 'Убрать из корзины';

  static const String sobitya = 'События';
  static const String subSobitya = 'Ваши лучшие моменты жизни';

  static const String akciya = 'Акции';
  static const String subAkciya = 'Разные акции с накопленными бонусами';

  static const String history = 'История заказов';
  static const String subHistory = 'Здесь будет собрано все ваши заказы';

  static const String callCenter = 'Обратная связь';
  static const String subCallCenter = 'Дайте нам знать о качестве наших блюд';

  static const String setting = 'Настройки';
}

class AppTextStyle {
  static TextStyle textStyleFunk({
    double size = 15,
    Color color = Colors.black,
    FontWeight fontWeight = FontWeight.w600,
  }) =>
      TextStyle(
        letterSpacing: 1,
        fontFamily: 'SF',
        color: color,
        fontSize: size,
        fontWeight: fontWeight,
      );

  static TextStyle title = TextStyle(
      fontFamily: 'SF',
      letterSpacing: 1,
      color: Colors.black,
      fontSize: 23.sp,
      fontWeight: FontWeight.w700);
  static TextStyle subTitle = TextStyle(
      fontFamily: 'SF',
      letterSpacing: 1,
      color: Colors.black.withOpacity(0.38),
      fontSize: 17.sp,
      fontWeight: FontWeight.w400);

  static TextStyle styleSeventyF = TextStyle(
      fontFamily: 'SF',
      letterSpacing: 1,
      color: Colors.black,
      fontSize: 17.sp,
      fontWeight: FontWeight.w500);
  static TextStyle location = TextStyle(
      fontFamily: 'SF',
      letterSpacing: 1,
      color: Colors.black,
      fontSize: 15.sp,
      fontWeight: FontWeight.w500);
  static TextStyle subLoc = TextStyle(
      letterSpacing: 1,
      fontFamily: 'SF',
      color: Colors.black,
      fontSize: 17.sp,
      fontWeight: FontWeight.w600);
}
