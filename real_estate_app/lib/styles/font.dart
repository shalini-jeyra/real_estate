part of styles;
class AppFont {
  static TextStyle getAppFont({
    FontWeight fontWeight,
    double fontSize,
    Color color,
  }) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    );
  }
}
class AppStyle {
  static final primaryAppText = AppFont.getAppFont(
    color: AppColor.primaryColor,
    fontSize: 16,
  );
  static final secondaryAppText = AppFont.getAppFont(
    color: TextColor.primaryColor,
    fontSize: 16,
  );
  static final ternaryAppText = AppFont.getAppFont(
    color: TextColor.secondaryColor,
    fontSize: 12,
  );
}

class AppTextStyle {
  static final primaryText = AppFont.getAppFont(
    color: TextColor.primaryColor,
    fontWeight: FontWeight.bold,
    fontSize: 19,
  );
  static final secondaryText = AppFont.getAppFont(
    color: TextColor.primaryColor,
    fontWeight: FontWeight.w500,
    fontSize: 17,
  );
}

class HintTextStyle{
  static final primaryText= AppFont.getAppFont(fontSize: 15, color: TextColor.secondaryColor);
  static final secondaryText=AppFont.getAppFont(
            color: TextColor.primaryColor,
            fontSize: 13,
  );
}
