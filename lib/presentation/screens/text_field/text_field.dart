import 'package:flutter/material.dart';

class TextFieldScreen extends StatefulWidget {

  const TextFieldScreen({super.key});

  @override
  State<TextFieldScreen> createState() => _TextFieldScreenState();
}

class _TextFieldScreenState extends State<TextFieldScreen> {
  final TextEditingController controller = TextEditingController();
  final List<String> products = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lista de compras"),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: controller,
                      decoration: InputDecoration(
                        labelText: "Nuevo Producto"
                      ),
                    )
                  ),
                  IconButton(onPressed: (){
                    if(controller.text.isNotEmpty){
                      setState(() {
                        products.add(controller.text);
                      });
                    }
                  }, icon: const Icon(Icons.add))
                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index){
                    return Dismissible(
                      key: Key(products[index]),
                      onDismissed: (direction){
                        setState(() {
                          products.removeAt(index);
                        });
                      },
                      background: Container(color: Colors.grey,),
                      child: Text(products[index])
                    );
                  }
                ),
              )
            ]
          ),
        )
      )
    );
  }
}
