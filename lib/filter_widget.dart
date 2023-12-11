import 'package:flutter/material.dart';

class FilterWidget extends StatefulWidget {
  const FilterWidget({
    super.key,
    required this.isSelected,
    required this.onSelect,
  });

  final bool Function(String item) isSelected;
  final void Function(bool selected, String item) onSelect;

  @override
  State<FilterWidget> createState() => _FilterWidgetState();
}

class _FilterWidgetState extends State<FilterWidget> {
  final List<String> colorFilters = <String>[
    'black_and_white',
    'black',
    'white',
    'yellow',
    'orange',
    'red',
    'purple',
    'magenta',
    'green',
    'teal',
    'blue',
  ];

  String selectedColor = '';

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showDialog<StatefulBuilder>(
          context: context,
          builder: (BuildContext context) {
            return StatefulBuilder(
              builder: (BuildContext context, void Function(void Function()) setState) => Dialog(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Wrap(
                    children: colorFilters.map((String item) {
                      return Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: FilterChip(
                            showCheckmark: false,
                            label: Text(item),
                            selected: widget.isSelected(item),
                            selectedColor: Colors.lightBlueAccent,
                            onSelected: (bool value) {
                              setState(() {
                                widget.onSelect(value, item);
                              });
                            }),
                      );
                    }).toList(),
                  ),
                ),
              ),
            );
          },
        );
      },
      icon: const Icon(
        Icons.menu,
        color: Colors.lightBlueAccent,
      ),
    );
  }
}
