import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:front_end/constants/app_icons.dart';
import 'package:intl/intl.dart';

class CustomTextBox extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final Widget? prefixIcon;
  final EdgeInsetsGeometry? margin;
  final TextInputType? keyboardType;
  const CustomTextBox({
    super.key,
    required this.controller,
    required this.hintText,
    this.keyboardType,
    this.prefixIcon,
    this.margin,
  });

  @override
  State<CustomTextBox> createState() => _CustomTextBoxState();
}

class _CustomTextBoxState extends State<CustomTextBox> {
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

  @override
  Widget build(BuildContext context) {
    return Container(
        key: widget.key,
        width: double.maxFinite,
        height: 45,
        margin: widget.margin,
        child: TextFormField(
          controller: widget.controller,
          keyboardType: widget.keyboardType ?? TextInputType.none,
          decoration: InputDecoration(
            hintText: widget.hintText,
            prefixIcon: widget.prefixIcon,
            suffixIcon: widget.controller.text.isEmpty
                ? Container(
                    width: 0,
                  )
                : IconButton(
                    icon: AppIcons.close(),
                    onPressed: () => widget.controller.clear()),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
            errorMaxLines: 1,
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

class TextValidators {
  static String? validate(TextInputType keyboardType, String value) {
    if (keyboardType == TextInputType.emailAddress) {
      return !EmailValidator.validate(value) ? "Email inválido" : null;
    } else if (keyboardType == TextInputType.datetime) {
      try {
        DateFormat('dd/MM/yyyy').parseStrict(value);
        return null;
      } catch (e) {
        return "Data inválida";
      }
    }

    //TODO: COLOCAR AS OUTRAS VALIDAÇÕES (DATA, TELEFONE), ARRUMAR ALTURA DE QUANDO APARECE O ERRO, MUDAR COR ICONE CLOSE, ADICIONAR
    //ICONES DE FACEBOOK E GOOGLE NO APPICONS

    //falta fazer: exibir a emnsagem de erro, diminuir tamanho icone e adicioanr validação de telefone

    return null;
  }
}
