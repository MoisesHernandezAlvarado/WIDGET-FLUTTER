import 'package:flutter/material.dart';
import 'package:widget_app/presentation/shared/custom_button.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int conter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Widget App"),
        leading: IconButton(onPressed: (){
          print("Alarma");
        }, icon: const Icon(Icons.access_alarm)),
        actions: [
          IconButton(onPressed: (){
            print("Alarma");
          }, icon: const Icon(Icons.ac_unit)),
          IconButton(onPressed: (){
            print("Alarma");
          }, icon: const Icon(Icons.sanitizer_outlined))
        ],
        
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomButton(icon: Icons.plus_one, onPressed: (){
            setState(() {
              conter++;
            });
          },),
          const SizedBox(height: 10,),
          CustomButton(icon: Icons.exposure_minus_1, onPressed: (){
            setState(() {
              conter--;
            });
          },),
          const SizedBox(height: 10,),
          CustomButton(icon: Icons.restore, onPressed: (){
            setState(() {
              conter = 0;
            });
          },),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$conter", style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w200),),
            Text(conter == 1 ? "Click" : "Clicks", style: const TextStyle(fontSize: 25),)
          ],
        )
      ),
    );
  }
}
