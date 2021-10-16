import 'package:example/disney_api/requests/disney_character_request.dart';
import 'package:example/disney_api/responses/disney_character_response.dart';
import 'package:example/disney_api/responses/disney_error_response.dart';
import 'package:flutter/material.dart';
import 'package:network_manager/network_manager.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                var networkResult = await NetworkManager(
                  DisneyCharacterRequest(),
                  parseModel: DisneyCharacterResponse(),
                  successModel: DisneyCharacterResponse(),
                  failureModel: DisneyErrorResponse(),
                ).request();

                networkResult.when(
                  success: (success) {
                    debugPrint(success.toString());
                  },
                  failure: (failure) {
                    debugPrint(failure.toString());
                  },
                  exception: (exception) {
                    debugPrint(exception.toString());
                  },
                );
              },
              child: const Text('Button'),
            ),
          ],
        ),
      ),
    );
  }
}
