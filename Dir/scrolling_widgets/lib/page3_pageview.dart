import 'package:flutter/material.dart';

class PageViewPage extends StatelessWidget {
   const PageViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("PageView")),
      body: Center(
        child: SizedBox(
          height: 300,
          width: 250,
          child: PageView(
            controller: PageController(initialPage: 1, viewportFraction: 0.8),
            scrollDirection: Axis.vertical,
            children:  [
              Container(color: Colors.amber, child: const Center(child: Text("Página 1"))),
              Container(color: Colors.red, child: const Center(child: Text("Página 2"))),
              Container(color: Colors.green, child: const Center(child: Text("Página 3"))),
            ],
          ),
        ),
      ),
    );
  }
}