part of styles;

class AppStyle {
  static final TextStyle primaryAppText = TextStyle(
    color: AppColor.primaryColor,
    fontSize: 16,
  );
  static final TextStyle secondaryAppText = TextStyle(
    color: TextColor.primaryColor,
    fontSize: 16,
  );
  static final TextStyle ternaryAppText = TextStyle(
    color: TextColor.secondaryColor,
    fontSize: 12,
  );
}

class AppTextStyle {
  static final TextStyle primaryText = TextStyle(
    color: TextColor.primaryColor,
    fontWeight: FontWeight.bold,
    fontSize: 19,
  );
  static final TextStyle secondaryText = TextStyle(
    color: TextColor.primaryColor,
    fontWeight: FontWeight.w500,
    fontSize: 17,
  );
}

class HintTextStyle{
  static final TextStyle primaryText= TextStyle(fontSize: 15, color: TextColor.secondaryColor);
  static final TextStyle secondaryText=TextStyle(
            color: TextColor.primaryColor,
            fontSize: 13,
  );
}
