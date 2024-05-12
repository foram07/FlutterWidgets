import 'package:flutter/material.dart';
import 'package:widgets_demo/button/ButtonList.dart';
import 'package:widgets_demo/column/ColumnWidget.dart';
import 'package:widgets_demo/row/RowWidget.dart';
import 'package:widgets_demo/splash/SplashScreen.dart';
import 'package:widgets_demo/text/TextList.dart';

void main() {
  runApp(MaterialApp(
    home: const WidgetList(),
    initialRoute: '/splash',
    routes: {
      '/splash': (context) => const SplashScreen(),
      '/widgetList': (context) => const WidgetList(),
      '/text': (context) => const TextList(),
      '/button': (context) => const ButtonList(),
      '/column': (context) => const ColumnWidget(),
      '/row': (context) => const RowWidget()
    },
  ));
}

var name = ['Text', 'Button', 'Column', 'Row'];

class WidgetList extends StatefulWidget {
  const WidgetList({super.key});

  @override
  State<StatefulWidget> createState() => _ListWidget();
}

class _ListWidget extends State<WidgetList> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) {
          return Material(
            child: InkWell(
              child: Text(name[index], style: const TextStyle(fontSize: 16)),
              onTap: () {
                switch (index) {
                  case 0:
                    {
                      Navigator.pushNamed(context, '/text');
                    }
                    break;
                  case 1:
                    {
                      Navigator.pushNamed(context, '/button');
                    }
                    break;
                  case 2:
                    {
                      Navigator.pushNamed(context, '/column');
                    }
                    break;
                  case 3:
                    {
                      Navigator.pushNamed(context, '/row');
                    }
                    break;
                  default:
                    {}
                }
              },
            ),
          );
        },
        itemCount: name.length,
        separatorBuilder: (BuildContext context, int index) {
          return const Divider(
            thickness: 2,
            height: 20,
          );
        });
  }
}
