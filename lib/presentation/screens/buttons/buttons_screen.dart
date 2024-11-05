import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            FilledButton(onPressed: (){
              context.push("/info/Juan/10/ing");
            }, child: const Text("Click")),
            const FilledButton(onPressed: null, child: Text("Click")),
            const FilledButton(onPressed: null, child: Text("Click")),
            const FilledButton(onPressed: null, child: Text("Click")),
            const FilledButton(onPressed: null, child: Text("Click"))
          ],
        ),
      )
      ),
    );
  }
}