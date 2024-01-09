import 'package:flutter/material.dart';
import 'dart:async';

import 'package:open_app/open_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _platformVersion = '';
  final _openAppPlugin = OpenApp();

  @override
  void initState() {
    super.initState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    String? platformVersion;

    platformVersion = await _openAppPlugin.getPlatformVersion();
    _openAppPlugin.openWithPackageName("com.tencent.mm");
    debugPrint(platformVersion);


    if (!mounted) return;

    setState(() {
      _platformVersion = platformVersion!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Column(
          children: [
            Text('Running on: $_platformVersion\n'),
            ElevatedButton(child: const Text("打开QQ"), onPressed: (){
              _openAppPlugin.openWithPackageName("com.tencent.mobileqq");
            },)
          ]
        ),
        floatingActionButton: ElevatedButton(
          child: const Text("打开微信"), onPressed: () {
          initPlatformState();
        },),
      ),
    );
  }
}
