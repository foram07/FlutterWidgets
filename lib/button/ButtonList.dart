import 'package:flutter/material.dart';

class ButtonList extends StatelessWidget {
  const ButtonList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [
      TextButtonWidget(),
      ElevatedButtonWidget(),
      OutlineButtonWidget(),
      TextButtonWithIconLeading(),
      MenuButton()
    ]);
  }
}

class TextButtonWithIconLeading extends StatelessWidget {
  const TextButtonWithIconLeading({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
        onPressed: () {},
        style: TextButton.styleFrom(
            textStyle: const TextStyle(color: Colors.blue),
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        icon: const Icon(Icons.account_box_rounded),
        label: const Text('Click Here for Account'));
  }
}

class MenuButton extends StatelessWidget {
  const MenuButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 60,
      child: OutlinedButton(
          style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30))),
          onPressed: () {},
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("Icon text"),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.account_box_rounded),
          ])),
    );
  }
}

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          print('Text Button clicked here');
        },
        child: const Text(
          "Text Button",
          style: TextStyle(fontSize: 18),
        ));
  }
}

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          print('Elevated Button clicked here');
        },
        child: const Text(
          "Elevated Button",
          style: TextStyle(fontSize: 18),
        ));
  }
}

class OutlineButtonWidget extends StatelessWidget {
  const OutlineButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: () {
          print('Outlined Button clicked here');
        },
        style: OutlinedButton.styleFrom(
            foregroundColor: Colors.amber, disabledForegroundColor: Colors.red),
        child: const Text(
          "Outlined Button",
          style: TextStyle(fontSize: 18),
        ));
  }
}
