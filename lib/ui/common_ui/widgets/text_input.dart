import 'package:ezone/ui/common_ui/common_colors.dart';
import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  
  const TextInput(
      {super.key, 
      required this.labelText,
      required this.textInputType,
      required this.textController,
      required this.focusNode,
      this.mMaxline = 1});

  final String labelText;
  final TextInputType textInputType;
  final int mMaxline;
  final TextEditingController textController;
  final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.loose,
      child: TextField(
        
          style: Theme.of(context).textTheme.headlineMedium,
          controller: textController,
          keyboardType: textInputType,
          focusNode: focusNode,
          cursorColor: CommonColors.inputCursorColor,
          decoration: InputDecoration(
            
            border: const OutlineInputBorder(),
            labelText: labelText,
            labelStyle: const TextStyle(color: CommonColors.inputCursorColor),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: CommonColors.inputCursorColor, width: 1.0),
            ),
          ),
          maxLines: mMaxline,
          ),
    );
  }

}