import 'package:flutter/material.dart';
import 'package:scrolling_widgets/instagram.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text("ListView"),),
      body: Center(
        child: Column(children: [ElevatedButton(onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>const ListViewSimple()));}, child: const Text("ListView")),
        ElevatedButton(onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>const ListViewBuilder()));}, child: const Text("ListView.Builder")),
        ElevatedButton(onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>const ListViewSeparated() ));}, child: const Text("ListView.Separated")),
        ElevatedButton(onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=> const ListViewCustom()));}, child: const Text("ListView.Custom")),
        ElevatedButton(onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=> const Tarea()));}, child: const Text("Tarea")),]
        ,
        ),
      ),
            
    );
  }
}


class ListViewSimple extends StatelessWidget {
  const ListViewSimple({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scrollbar(
        thumbVisibility: true,
        child: Scaffold(
          body: ListView(
            padding: const EdgeInsets.only(left: 10),
            children: const [
              ListTile(leading: Icon(Icons.abc), title: Text("Título"), subtitle: Text("Subtítulo"), trailing: Icon(Icons.access_alarm),) ,
              ListTile(leading: Icon(Icons.abc), title: Text("Título"), subtitle: Text("Subtítulo"), trailing: Icon(Icons.access_alarm),),
              ListTile(leading: Icon(Icons.abc), title: Text("Título"), subtitle: Text("Subtítulo"), trailing: Icon(Icons.access_alarm),),
              ListTile(leading: Icon(Icons.abc), title: Text("Título"), subtitle: Text("Subtítulo"), trailing: Icon(Icons.access_alarm),),
              ListTile(leading: Icon(Icons.abc), title: Text("Título"), subtitle: Text("Subtítulo"), trailing: Icon(Icons.access_alarm),),
              ListTile(leading: Icon(Icons.abc), title: Text("Título"), subtitle: Text("Subtítulo"), trailing: Icon(Icons.access_alarm),),
              ListTile(leading: Icon(Icons.abc), title: Text("Título"), subtitle: Text("Subtítulo"), trailing: Icon(Icons.access_alarm),),
              ListTile(leading: Icon(Icons.abc), title: Text("Título"), subtitle: Text("Subtítulo"), trailing: Icon(Icons.access_alarm),),
              ListTile(leading: Icon(Icons.abc), title: Text("Título"), subtitle: Text("Subtítulo"), trailing: Icon(Icons.access_alarm),),
              ListTile(leading: Icon(Icons.abc), title: Text("Título"), subtitle: Text("Subtítulo"), trailing: Icon(Icons.access_alarm),),
              ListTile(leading: Icon(Icons.abc), title: Text("Título"), subtitle: Text("Subtítulo"), trailing: Icon(Icons.access_alarm),),
              ListTile(leading: Icon(Icons.abc), title: Text("Título"), subtitle: Text("Subtítulo"), trailing: Icon(Icons.access_alarm),),
              ListTile(leading: Icon(Icons.abc), title: Text("Título"), subtitle: Text("Subtítulo"), trailing: Icon(Icons.access_alarm),),
              ListTile(leading: Icon(Icons.abc), title: Text("Título"), subtitle: Text("Subtítulo"), trailing: Icon(Icons.access_alarm),),
              ListTile(leading: Icon(Icons.abc), title: Text("Título"), subtitle: Text("Subtítulo"), trailing: Icon(Icons.access_alarm),),
              ListTile(leading: Icon(Icons.abc), title: Text("Título"), subtitle: Text("Subtítulo"), trailing: Icon(Icons.access_alarm),),
              ListTile(leading: Icon(Icons.abc), title: Text("Título"), subtitle: Text("Subtítulo"), trailing: Icon(Icons.access_alarm),),
              ListTile(leading: Icon(Icons.abc), title: Text("Título"), subtitle: Text("Subtítulo"), trailing: Icon(Icons.access_alarm),),
              ListTile(leading: Icon(Icons.abc), title: Text("Título"), subtitle: Text("Subtítulo"), trailing: Icon(Icons.access_alarm),),
              ListTile(leading: Icon(Icons.abc), title: Text("Título"), subtitle: Text("Subtítulo"), trailing: Icon(Icons.access_alarm),),
              ListTile(leading: Icon(Icons.abc), title: Text("Título"), subtitle: Text("Subtítulo"), trailing: Icon(Icons.access_alarm),),
              ListTile(leading: Icon(Icons.abc), title: Text("Título"), subtitle: Text("Subtítulo"), trailing: Icon(Icons.access_alarm),),
              ListTile(leading: Icon(Icons.abc), title: Text("Título"), subtitle: Text("Subtítulo"), trailing: Icon(Icons.access_alarm),),
              ListTile(leading: Icon(Icons.abc), title: Text("Título"), subtitle: Text("Subtítulo"), trailing: Icon(Icons.access_alarm),),
              ListTile(leading: Icon(Icons.abc), title: Text("Título"), subtitle: Text("Subtítulo"), trailing: Icon(Icons.access_alarm),),
              ListTile(leading: Icon(Icons.abc), title: Text("Título"), subtitle: Text("Subtítulo"), trailing: Icon(Icons.access_alarm),),
              ListTile(leading: Icon(Icons.abc), title: Text("Título"), subtitle: Text("Subtítulo"), trailing: Icon(Icons.access_alarm),),
              ListTile(leading: Icon(Icons.abc), title: Text("Título"), subtitle: Text("Subtítulo"), trailing: Icon(Icons.access_alarm),),
              ListTile(leading: Icon(Icons.abc), title: Text("Título"), subtitle: Text("Subtítulo"), trailing: Icon(Icons.access_alarm),),
              ListTile(leading: Icon(Icons.abc), title: Text("Título"), subtitle: Text("Subtítulo"), trailing: Icon(Icons.access_alarm),),
              ListTile(leading: Icon(Icons.abc), title: Text("Título"), subtitle: Text("Subtítulo"), trailing: Icon(Icons.access_alarm),),
              ListTile(leading: Icon(Icons.abc), title: Text("Título"), subtitle: Text("Subtítulo"), trailing: Icon(Icons.access_alarm),),
              
            ],
          ),
        ),
      );
  }
}


class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Scrollbar(
        thumbVisibility: true,
        child: ListView.builder(
          itemCount: 100,
          
          itemBuilder: (context, int index){
          return ListTile(leading: const Icon(Icons.abc), title: Text("Título${index+1}"), subtitle: const Text("Subtítulo"), trailing: const Icon(Icons.access_alarm),);
        }),
      )


      
    );
  }
}


class ListViewSeparated extends StatelessWidget {
  const ListViewSeparated({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>['A', 'B', 'C'];
    return  Scaffold(
      body: Scrollbar(child: ListView.separated(itemBuilder: (context, int index){
          return ListTile(leading: const Icon(Icons.abc), title: Text("Título ${entries[index]}"), subtitle: const Text("Subtítulo"), trailing: const Icon(Icons.access_alarm),);
        },
       separatorBuilder: (context, index){
        return const Divider( color: Colors.blue, thickness: 2,);

       }, itemCount: entries.length)),


    );
  }
}

class ListViewCustom extends StatelessWidget {
  const ListViewCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Scrollbar(child: ListView.custom(childrenDelegate: SliverChildBuilderDelegate((context, index) {
        if (index.isEven){
         return  ListTile(leading: const Icon(Icons.abc), title: Text("Título $index"), subtitle: const Text("Subtítulo"), trailing: const Icon(Icons.accessibility),);
        } else {
           return  ListTile(leading: const Icon(Icons.abc), title: Text("Título $index"), subtitle: const Text("Subtítulo"), trailing: const Icon(Icons.access_alarm),);
        }
      }))),



    );
  }
}

class Tarea extends StatelessWidget {
  const Tarea({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Instagram"),),
      body: Column(
        children: [
          SizedBox(height: 100,child: ListView.builder(scrollDirection: Axis.horizontal,
            
            itemBuilder: (context,index){return  Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(radius: 30,child: Text("Item ${index +1}"),),
            ); }, itemCount: 100,)),
            Expanded(child: ListView(children: const [InstagramPost(), InstagramPost(),
              InstagramPost(), InstagramPost(),
              InstagramPost(), InstagramPost(), 
              InstagramPost(), InstagramPost(), 
              InstagramPost(), InstagramPost(),
              InstagramPost(), InstagramPost(), 
              InstagramPost(), InstagramPost(), 
              InstagramPost()],))
        ],
      ),
    );
  }
}
