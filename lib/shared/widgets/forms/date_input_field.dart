import 'package:devcademy_flutter/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class DateInputField extends StatefulWidget {
  final String name;
  final String label;
  final String? Function(DateTime?)? validator;

  const DateInputField({
    Key? key,
    required this.name,
    required this.label,
    this.validator,
  }) : super(key: key);

  @override
  State<DateInputField> createState() => _DateInputFieldState();
}

class _DateInputFieldState extends State<DateInputField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: FormBuilderDateTimePicker(
        validator: widget.validator,
        resetIcon: Padding(
          padding: const EdgeInsets.all(12),
          child: Icon(
            Icons.calendar_today,
            color: ThemeColors.gray300,
          ),
        ),
        name: widget.name,
        initialEntryMode: DatePickerEntryMode.calendarOnly,
        initialValue: null,
        style: textTheme.labelMedium,
        inputType: InputType.date,
        decoration: InputDecoration(
          fillColor: Colors.white,
          alignLabelWithHint: true,
          labelText: widget.label,
          suffixIcon: const Icon(Icons.calendar_today),
          enabledBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(5)),
              borderSide: BorderSide(color: ThemeColors.gray200)),
          focusedBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(5)),
              borderSide: BorderSide(color: ThemeColors.coral500)),
          contentPadding: const EdgeInsets.all(10),
        ),
      ),
    );
  }
}
