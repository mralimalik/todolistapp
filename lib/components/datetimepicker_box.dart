import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimePickerFormField extends StatefulWidget {
  @override
  _DateTimePickerFormFieldState createState() => _DateTimePickerFormFieldState();
}

class _DateTimePickerFormFieldState extends State<DateTimePickerFormField> {
  DateTime? selectedDate;
  TimeOfDay? selectedTime;

  // Function to select a date using the date picker
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  // Function to select a time using the time picker
  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime ?? TimeOfDay.now(),
    );

    if (picked != null && picked != selectedTime) {
      setState(() {
        selectedTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // Format the selected date using DateFormat from intl package
    String dateText = selectedDate != null ? DateFormat('yyyy-MM-dd').format(selectedDate!) : 'Select Date';

    // Format the selected time using the format method of TimeOfDay
    String timeText = selectedTime != null ? selectedTime!.format(context) : 'Select Time';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () => _selectDate(context),
          child: Text(dateText),
        ),
        SizedBox(height: 8),
        ElevatedButton(
          onPressed: () => _selectTime(context),
          child: Text(timeText),
        ),
      ],
    );
  }
}
