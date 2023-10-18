import 'package:flutter/material.dart';
import 'package:hex_color/class/color_to_hex.dart';
import 'package:hex_color/class/hex_to_color.dart';
import 'package:hex_color/extensions/extension_hextocolor.dart';
import 'package:hex_color/hex_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color color = Colors.deepPurple;
  String hex = "#000000";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            /// Convert Using Extension
            Text(
              color.convertToHex.hex!,
              style: TextStyle(color: hex.convertToColor),
            ),
            InkWell(
                onTap: () {
                  /// Convert HexColor to Color()
                  print(hexToColor(hex).toString());

                  /// Convert Color() to HexColor
                  print(colorToHex(color).hex);
                  print(colorToHex(color).color);
                },
                child: Text(
                  "click",
                  style:
                      TextStyle(color: color.convertToHex.hex!.convertToColor),
                ))
          ],
        ),
      ),
    );
  }
}
