import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'main_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String ikenoText = 'ikenoさんはかっこいい';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home:ChangeNotifierProvider<MainModel>(
        create: (_) => MainModel(),
        child: Scaffold(
          appBar: AppBar(
            title: Text(
                'ikenooooo',
            ),
          ),
          body: Consumer<MainModel>(builder: (context, model, child) {
              return Center(
                child: Column(
                  children: [
                    Text(model.ikenoText),
                    RaisedButton(
                        child: Text('ボタン'),
                        onPressed: (){
                          model.changeikenoText();
                        },
                    )
                  ]
                ),
              );
            }
          ),
        ),
      ),
    );
  }
}

