import 'package:flutter/material.dart';

class DatePickerWidget extends StatelessWidget {
  final String label;
  final DateTime date;
  final void Function(DateTime? date) onChanged;

  const DatePickerWidget({
    Key? key,
    required this.label,
    required this.date,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final now = DateTime.now();
        final DateTime? date = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(now.year - 50),
          lastDate: DateTime(now.year + 50),
        );

        onChanged(date);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(label, style: Theme.of(context).textTheme.caption),
            const SizedBox(height: 8),
            Text(
              date.toLocal().toString().substring(0, 10),
            ),
            const SizedBox(height: 16),
            const Divider(
              thickness: 1,
              color: Colors.grey,
              height: 0,
            ),
          ],
        ),
      ),
    );
  }
}
