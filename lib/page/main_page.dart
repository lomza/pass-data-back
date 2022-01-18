import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pass_data_previous_screen/main_router.gr.dart';

class MainPage extends HookWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final name = useState('');

    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Your name: ${name.value}',
              textAlign: TextAlign.center,
            ),
            MaterialButton(
              child: Text('Navigate to Details'),
              onPressed: () async {
                final nameFromInput =
                    await context.router.push<String>(DetailsPageRoute(initialName: name.value)) ?? '';
                name.value = nameFromInput;
              },
              color: Colors.amberAccent,
            ),
          ],
        ),
      ),
    );
  }
}
