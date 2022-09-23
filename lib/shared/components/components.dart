
import 'package:flutter/material.dart';

Widget defaultButton({
  double? width = double.infinity,
  Color? backGroundColor = Colors.red,
  bool isUperCase = true,
  @required Function,
  @required String? text,
}) =>
    Container(
      height: 40.0,
      width: width,
      child: MaterialButton(
        color: backGroundColor,
        onPressed: Function,
        child: Text(
          " ${isUperCase ? text!.toUpperCase() : text} ",
          style: const TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );

Widget defaultTextForm({
  @required validateFunction,
  @required TextInputType? textInputType,
  bool obscureText = true,
  @required TextEditingController? controller,
  functionOnFieldSubmitted,
  functionOnChanged,
  @required IconData? prefixIcon,
  IconData? suffixIcon,
  @required String? labelText,
  @required double? raduis,
  suffixFuncion,
}) =>
    TextFormField(
      validator: validateFunction,
      keyboardType: textInputType,
      controller: controller,
      obscureText: obscureText,
      onFieldSubmitted: functionOnFieldSubmitted,
      onChanged: functionOnChanged,
      decoration: InputDecoration(
        prefixIcon: Icon(prefixIcon),
        suffix: suffixIcon != null
            ? IconButton(
          constraints: BoxConstraints(maxHeight: 10 ,minHeight: 5) ,
                onPressed: suffixFuncion,
                icon: Icon(suffixIcon),
              )
            : null,
        labelText: labelText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            raduis!,
          ),
        ),
      ),
    );
