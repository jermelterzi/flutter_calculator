import 'package:calculator/widgets/button.dart';
import 'package:flutter/widgets.dart';

class ButtonRow extends StatelessWidget {
  const ButtonRow({Key? key, required this.buttons}) : super(key: key);

  final List<Button> buttons;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: buttons.fold(
          <Widget>[],
          (list, element) {
            list.isEmpty
                ? list.add(element)
                : list.addAll(
                    [const SizedBox(width: 1), element],
                  );
            return list;
          },
        ),
      ),
    );
  }
}
