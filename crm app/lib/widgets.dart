import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:signup_encrypt/constants.dart';

void navigateTo(context, widget) => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );

void navigatePushAndRemoveUntil(context, widget) =>
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => widget),
          (route) => false,
    );

Widget defaultFormField({
  TextEditingController? controller,
  TextInputType? keyboardType = TextInputType.text,
  required bool isMobileDevice,
  bool obscureText = false,
  String? labelText,
  String? hintText,
  Widget? suffixIcon,
  Widget? prefixIcon,
  void Function()? onTap,
  String? Function(String?)? validator,
  void Function(String)? onChanged,
  double radiusField = fifty,
}) {
  return TextFormField(
    controller: controller,
    keyboardType: keyboardType,
    style: TextStyle(
      color: Colors.grey[600],
      fontSize: isMobileDevice ? fourteen : twentyFour,
    ),
    obscureText: obscureText,
    validator: validator,
    onChanged: onChanged,
    onTap: onTap,
    decoration: InputDecoration(
      border: OutlineInputBorder(
          borderSide: BorderSide(
            color: primaryColor.withOpacity(0.4),
            width: one,
          ),
          borderRadius: BorderRadius.circular(radiusField)),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: primaryColor,
            width: one,
          ),
          borderRadius: BorderRadius.circular(radiusField)),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: primaryColor.withOpacity(0.4),
            width: one,
          ),
          borderRadius: BorderRadius.circular(radiusField)),
      contentPadding: EdgeInsets.symmetric(
        vertical: isMobileDevice ? fourteen : eighteen,
        horizontal: isMobileDevice ? eighteen : fourteen,
      ),
      labelText: labelText,
      labelStyle: TextStyle(
        color: Colors.grey[400],
        fontSize: isMobileDevice ? fourteen : twentyFour,
      ),
      hintStyle: TextStyle(
        color: Colors.grey[400],
        fontSize: isMobileDevice ? fourteen : twentyFour,
      ),
      hintText: hintText,
      prefixIconConstraints: BoxConstraints(
          maxHeight: isMobileDevice ? fortyFive : sixtyFive,
          maxWidth: isMobileDevice ? fortyFive : sixtyFive),
      suffixIconConstraints: BoxConstraints(
          maxHeight: isMobileDevice ? fortyFive : sixtyFive,
          maxWidth: isMobileDevice ? fortyFive : sixtyFive),
      suffixIcon: suffixIcon,
      prefixIcon: prefixIcon,
    ),
  );
}

Widget defaultButton({
  required bool isMobileDevice,
  required void Function()? onPressed,
  required String buttonTitle,
}) {
  return ElevatedButton(
    onPressed: onPressed,
    style: ElevatedButton.styleFrom(
      backgroundColor: primaryColor,
      disabledBackgroundColor: primaryColor.withOpacity(0.5),
      padding: EdgeInsets.symmetric(
        vertical: isMobileDevice ? fourteen : sixteen,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusDirectional.circular(
          fifty,
        ),
      ),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          buttonTitle,
          style: TextStyle(
            color: Colors.white,
            fontSize: isMobileDevice ? sixteen : twentyFour,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}

Future<bool?> showToast(String msg) =>
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.SNACKBAR,
        timeInSecForIosWeb: 3,
        backgroundColor: primaryColor,
        textColor: Colors.white,
        fontSize: 16.0);

Future<bool?> showToastError(String msg) =>
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.SNACKBAR,
        timeInSecForIosWeb: 3,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);

class OptionsModal{
  late String text;
  late Function() onTap;
  String? image;
  Widget? icon;
  Widget? body;

  OptionsModal(this.text, this.onTap,{this.image, this.icon, this.body});
}

Future showBottomModalSheetCustom({
  required BuildContext context,
  required List<OptionsModal> options,
}){
  return showModalBottomSheet(
      backgroundColor: Colors.white,
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(sixteen),
          topLeft: Radius.circular(sixteen),
        ),
      ),
      builder: (context) {
        return SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(sixteen),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.clear,
                        size: twentyFive,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                ...List.generate(options.length, (index) => Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: options[index].onTap,
                      child: Row(
                        children: [
                          if(options[index].image != null)
                            Image.asset(
                              color: Colors.black,
                              options[index].image.toString(),
                              width: twenty,
                              height: twentyFive,
                              fit: BoxFit.contain,
                            ),
                          if(options[index].icon != null)
                            options[index].icon ?? Container(),
                          if(options[index].image != null || options[index].icon != null)
                            SizedBox(
                              width: sixteen,
                            ),
                          Text(
                            '${options[index].text}',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: sixteen
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                          if(options[index].body != null)
                            SizedBox(
                              width: ten,
                            ),
                          if(options[index].body != null)
                            options[index].body!
                        ],
                      ),
                    ),
                    SizedBox(
                      height: sixteen,
                    ),
                  ],
                )),
              ],
            ),
          ),
        );
      });
}
