import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:front_end/constants/app_icons.dart';
import 'package:front_end/views/widgets/textboxes/custom_textbox.dart';
import 'package:intl/intl.dart';

import '../../../constants/app_colors.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final Widget? prefixIcon;
  final EdgeInsetsGeometry? margin;
  final TextInputType? keyboardType;
  final bool? isPassword;
  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.keyboardType,
    this.prefixIcon,
    this.margin,
    this.isPassword,
  });

  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    var isPassword = widget.isPassword ?? false;
    var hidePassword = true;
    return Container(
        key: widget.key,
        width: double.maxFinite,
        height: 45,
        margin: widget.margin,
        child: TextFormField(
          obscureText: isPassword? hidePassword: false,
          controller: widget.controller,
          keyboardType: widget.keyboardType ?? TextInputType.none,
          decoration: InputDecoration(
            hintText: widget.hintText,
            prefixIcon: widget.prefixIcon,
            suffixIcon: isPassword
                ? GestureDetector(    
                          child: hidePassword? AppIcons.eye() : AppIcons.eyeOff(),
                          onTap: (){
                            setState((){
                              hidePassword = !hidePassword;
                            }
                            );
                          },)  
                
                : (widget.controller.text.isEmpty
                    ? Container(
                        width: 0,
                      )
                    : IconButton(
                        icon: AppIcons.close(),
                        onPressed: () => widget.controller.clear())),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
            errorMaxLines: 1
          ),
          validator: (value) {
            if (widget.keyboardType != null && value != null) {
              return TextValidators.validate(widget.keyboardType!, value);
            }
            return null;
          },
        ));
  }
}
