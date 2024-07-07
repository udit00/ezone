import 'package:ezone/ui/common_ui/common_colors.dart';
import 'package:fluttertoast/fluttertoast.dart';

const int commonTimeInSecForIosWeb = 1;
const double commonFontSize = 20.0;
const Toast commonToastLength = Toast.LENGTH_SHORT;
const Toast commonFailToastLength = Toast.LENGTH_LONG;

void successToast(String message) {
  Fluttertoast.showToast(
      msg: message,
      toastLength: commonToastLength,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: commonTimeInSecForIosWeb,
      fontSize: commonFontSize,
      backgroundColor:  CommonColors.successColor,
      textColor: CommonColors.lightAppBarColor

  );
}

void failToast(String message) {
  Fluttertoast.showToast(
      msg: message,
      toastLength: commonFailToastLength,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: commonTimeInSecForIosWeb,
      fontSize: commonFontSize,
      // backgroundColor: Colors.red,
      backgroundColor:  CommonColors.failColor,
      textColor: CommonColors.lightAppBarColor
  );
}