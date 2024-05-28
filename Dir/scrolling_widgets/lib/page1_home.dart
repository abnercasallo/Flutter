import 'package:flutter/material.dart';
import 'package:scrolling_widgets/page2_listview.dart';
import 'package:scrolling_widgets/page3_pageview.dart';
import 'package:scrolling_widgets/page4_gridview.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar( title: const Text("Home"),),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>const ListViewPage()));}, child: const Text("Ir a ListView")),
          ElevatedButton(onPressed: (){ Navigator.push(context,MaterialPageRoute(builder: (context)=>  const PageViewPage() ));}, child: const Text("Ir a PageView")),
          ElevatedButton(onPressed: (){ Navigator.push(context,MaterialPageRoute(builder: (context)=> const GridViewPage()));}, child: const Text("Ir a GridView")),
        ],
      )),


    );
  }
}


