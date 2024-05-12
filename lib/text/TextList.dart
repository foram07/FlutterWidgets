import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TextList extends StatelessWidget {
  const TextList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [
      SimpleText(),
      StrikeText(),
      UnderlineText(),
      OverlineText(),
      ShadowText(),
      CustomFontText(),
      SpannableMultiLineText(),
      GestorDectorText(),
      InkwellClickableText(),
      DefaultTextStyling()
    ]);
  }
}

class DefaultTextStyling extends StatelessWidget {
  const DefaultTextStyling({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [
      DefaultTextStyle(
        style: TextStyle(fontSize: 14, color: Colors.blue),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '4 lines below is the Default Text Widgets',
              ),
              Text(
                'The first text',
              ),
              Text(
                'The second text',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                'The third text',
                style: TextStyle(color: Colors.red),
              ),
            ],
          ),
        ),
      ),
      Text(
        'The fourth text',
      ),
    ]);
  }
}

class GestorDectorText extends StatelessWidget {
  const GestorDectorText({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Text Clicked');
      },
      child: const Text(
        'Clickable Text Using GestureDetector',
        style: TextStyle(fontSize: 14),
      ),
    );
  }
}

class InkwellClickableText extends StatelessWidget {
  const InkwellClickableText({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        child: InkWell(
            onTap: () {
              print('InkWell Text Clicked');
            },
            child: const Text('Clickable Text Using InkWell',
                style: TextStyle(fontSize: 14))));
  }
}

class SpannableMultiLineText extends StatelessWidget {
  const SpannableMultiLineText({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle defaultStyle =
        const TextStyle(color: Colors.grey, fontSize: 14.0);
    TextStyle linkStyle = const TextStyle(color: Colors.blue, fontSize: 14);
    return RichText(
      text: TextSpan(
        style: defaultStyle,
        children: <TextSpan>[
          const TextSpan(text: 'By clicking Sign Up, you agree to our '),
          TextSpan(
              text: 'Terms of Service',
              style: linkStyle,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  print('"Terms of Service"');
                }),
          const TextSpan(text: ' and that you have read our '),
          TextSpan(
              text: 'Privacy Policy',
              style: linkStyle,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  print('"Privacy Policy"');
                }),
        ],
      ),
    );
  }
}

class CustomFontText extends StatelessWidget {
  const CustomFontText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('Custom Font Text',
        textAlign: TextAlign.center,
        style: TextStyle(fontFamily: 'FontMain', fontSize: 14));
  }
}

class SimpleText extends StatelessWidget {
  const SimpleText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('Simple Text',
        textAlign: TextAlign.center, style: TextStyle(fontSize: 14));
  }
}

class StrikeText extends StatelessWidget {
  const StrikeText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Strike Text',
      textAlign: TextAlign.center,
      style: TextStyle(decoration: TextDecoration.lineThrough, fontSize: 14),
    );
  }
}

class UnderlineText extends StatelessWidget {
  const UnderlineText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Underline Text',
      textAlign: TextAlign.center,
      style: TextStyle(decoration: TextDecoration.underline, fontSize: 14),
    );
  }
}

class OverlineText extends StatelessWidget {
  const OverlineText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Overline Text',
      textAlign: TextAlign.center,
      style: TextStyle(decoration: TextDecoration.overline, fontSize: 14),
    );
  }
}

class ShadowText extends StatelessWidget {
  const ShadowText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Shadow Text',
      textAlign: TextAlign.center,
      style: TextStyle(shadows: [
        Shadow(blurRadius: 10.0, color: Colors.orange, offset: Offset(2.0, 2.0))
      ], fontSize: 14),
    );
  }
}
