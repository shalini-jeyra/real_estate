part of styles;

class AppBorder {
  static final primaryContainer = BorderRadius.circular(10.0);
  static final secondaryContainer =BorderRadius.only(
      topRight: Radius.circular(30),
      topLeft: Radius.circular(30),);
}

class ButtonBorder {
  static final primaryContainer = BorderRadius.circular(5.0);
  static final secondaryContainer =BorderRadius.only(
        topRight: Radius.circular(30),
        topLeft: Radius.circular(30),
  );
}
