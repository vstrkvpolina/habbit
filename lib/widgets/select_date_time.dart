import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:habbit/widgets/widgets.dart';

class SelectDateTime extends StatelessWidget {
  const SelectDateTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CommonTextField(
            title: 'Date',
            hintText: 'Jun, 24',
            readOnly: true,
            suffixIcon: IconButton(
                onPressed: () => _selectDate(context), icon: FaIcon(FontAwesomeIcons.calendar)),
          ),
        ),
        const Gap(10),
        Expanded(
          child: CommonTextField(
            title: 'Time',
            hintText: '20:20',
            readOnly: true,
            suffixIcon: IconButton(
                onPressed: ()=> _selectTime(context), 
                icon: FaIcon(FontAwesomeIcons.clock)),
          ),
        ),
      ],
    );
  }

  void _selectTime(BuildContext context) async {
    TimeOfDay? pickedTime =
        await showTimePicker(context: context, initialTime: TimeOfDay.now());

        if (pickedTime != null) {
          // 
        }
  }


  void _selectDate (BuildContext context) async {
    DateTime? pickedDate =  await showDatePicker(
    context: context, 
    initialDate: DateTime.now(),
    firstDate: DateTime(2025), 
    lastDate: DateTime(2090),

    );
    
  }
}
