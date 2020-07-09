import 'package:clean_arch_flutter_demo/res/colors.dart';
import 'package:flutter/material.dart';

class LoginTextField extends StatelessWidget {
  final String hintText;
  final Function validator;
  final Function onSaved;
  final bool isPassword;
  final bool isUserName;

  LoginTextField({this.hintText, this.validator, this.onSaved, this.isPassword, this.isUserName});


  @override
  Widget build(BuildContext context) {
    return Container(
        child: TextFormField(
          obscureText: isPassword? true:false,
          validator:  validator,
          onSaved: onSaved,
          keyboardType: isUserName? TextInputType.number : TextInputType.text,
          decoration: InputDecoration(
            contentPadding:
            EdgeInsets.symmetric(vertical: 11, horizontal: 16),
            hintText: hintText,
            filled: true,
            fillColor: bg_textinput,
            enabledBorder: OutlineInputBorder(
              borderSide:
              const BorderSide(color: border_textinput, width: 1.0),
              borderRadius: BorderRadius.circular(5.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: color_accent, width: 1.0),
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),

    );
  }
}
