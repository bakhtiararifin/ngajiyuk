import 'package:flutter/material.dart';

class SelectBoxWidget<T> extends StatelessWidget {
  final String label;
  final T value;
  final List<SelectBoxWidgetItem<T>> items;
  final void Function(T) onChanged;

  const SelectBoxWidget({
    Key key,
    @required this.label,
    @required this.value,
    @required this.items,
    @required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: Theme.of(context).textTheme.caption,
          ),
          DropdownButton<T>(
            items: items
                .map(
                  (e) => DropdownMenuItem<T>(
                    child: Text(e.label),
                    value: e.value,
                  ),
                )
                .toList(),
            value: value,
            onChanged: onChanged,
            isExpanded: true,
            underline: Container(),
          ),
          SizedBox(height: 8),
          Divider(
            thickness: 1,
            color: Colors.grey,
            height: 0,
          ),
        ],
      ),
    );
  }
}

class SelectBoxWidgetItem<T> {
  final String label;
  final T value;

  SelectBoxWidgetItem({
    @required this.label,
    @required this.value,
  });
}
