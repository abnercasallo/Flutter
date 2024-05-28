import 'package:flutter/material.dart';



void main(){
  runApp(
   const Perfil()
  );
}

class Perfil extends StatelessWidget {
  const Perfil({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme:ThemeData( useMaterial3: false, primarySwatch: Colors.blue ), //appBarTheme: AppBarTheme( color: Colors.black ) , //brightness: Brightness.dark
      home: Scaffold(
        appBar: AppBar( title: const Text("Mi Perfil"), ),
        body: const  PerfilBody(),


      ),


    );
  }
}


class PerfilBody extends StatelessWidget {
  const PerfilBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              margin: const EdgeInsets.all(5),
              height: 200,
              color: Colors.blue,

            ),
            const CircleAvatar(
              backgroundColor: Colors.white,
              radius: 70,
              backgroundImage: NetworkImage('https://www.mundodeportivo.com/alfabeta/hero/2023/10/esto-es-lo-que-tienes-que-saber-sobre-el-gear-fifth-de-luffy-en-one-piece.jpg?width=768&aspect_ratio=16:9&format=nowebp'),


            )
          ],



        ),
       const SizedBox(height: 24,),
       const Text("Nombre de Usuario", style: TextStyle( fontWeight: FontWeight.bold, fontSize: 24),),
       const Text("Correo Electrónico: usuario@gmail.com"),
       const SizedBox(height: 16,),
       const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
        children: [
          Column(children: [Text('Publicaciones'), Text('123')],),
          Column(children: [Text('Seguidores'), Text('456')],),
          Column(children: [Text('Siguiendo'), Text('789')],)



        ],


       ),
       const SizedBox(height: 16,),
       const Text('Biografía',  style: TextStyle( fontWeight: FontWeight.bold, fontSize: 18)),
       //const SizedBox(height: 16,),
       const Padding(
         padding:  EdgeInsets.all(16),
         child:  Text('Hola, soy Abner. Me gusta programar aplicativos con Flutter y aprender cosas nuevas cada día'),
       ),
       const Spacer(),

       const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Icon(Icons.thumb_up, color: Colors.blue,),
              Text('100')
            ],
          ),
          SizedBox(width: 16,),
          Column(
            children: [
              Icon(Icons.thumb_down, color: Colors.red,),
              Text('100')
            ],
          )
        ],


       )





      ],



    );




  }
}