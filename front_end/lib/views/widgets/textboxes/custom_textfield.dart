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
  void initState() {
    super.initState();

    widget.controller.addListener(onListen);
  }

  @override
  void dispose() {
    widget.controller.removeListener(onListen);

    super.dispose();
  }

  void onListen() => setState(() {});

  var hidePassword = true;
  void _switch() {
    setState(() {
      hidePassword = !hidePassword;
      print(widget.controller.text.isEmpty);
    });
  }

  @override
  Widget build(BuildContext context) {
    var isPassword = widget.isPassword ?? false;
    StatelessWidget getIcon() {
      if (isPassword) {
        return Container(
          height: 20,
          width: 50,
          child: GestureDetector(
            child: hidePassword ? AppIcons.eye() : AppIcons.eyeOff(),
            onTap: () {
              _switch();
            },
          ),
        );
      } else {
        return IconButton(
            icon: AppIcons.close(), onPressed: () => widget.controller.clear());
      }
    }

    return Container(
        key: widget.key,
        width: double.maxFinite,
        margin: widget.margin,
        child: TextFormField(
          obscureText: isPassword ? hidePassword : false,
          controller: widget.controller,
          keyboardType: widget.keyboardType ?? TextInputType.none,
          decoration: InputDecoration(
              contentPadding: const EdgeInsetsDirectional.all(10),
              hintText: widget.hintText,
              prefixIcon: widget.prefixIcon,
              suffixIcon: widget.controller.text.isEmpty
                  ? Container(
                      width: 0,
                    )
                  : getIcon(),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
              errorMaxLines: 1),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "please enter some text";
            }
            if (widget.keyboardType != null) {
              return TextValidators.validate(widget.keyboardType!, value);
            }
            return null;
          },
        ));
  }
}