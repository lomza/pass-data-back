import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class DetailsPage extends HookWidget {
  final String initialName;

  const DetailsPage({
    required this.initialName,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nameTextController = useTextEditingController(text: initialName);

    return Scaffold(
      appBar: AppBar(
        title: Text('Details Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 8.0),
              child: TextField(
                autofocus: true,
                controller: nameTextController,
                keyboardType: TextInputType.name,
              ),
            ),
            MaterialButton(
              child: Text('Go back with name'),
              onPressed: () async {
                await context.router.pop(nameTextController.text);
              },
              color: Colors.amberAccent,
            ),
          ],
        ),
      ),
    );
  }
}
