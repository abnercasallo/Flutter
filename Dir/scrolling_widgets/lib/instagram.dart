import 'package:flutter/material.dart';

class InstagramPost extends StatelessWidget {
  const InstagramPost({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListTile(leading: CircleAvatar(backgroundImage: NetworkImage('https://hips.hearstapps.com/hmg-prod/images/apple-ceo-steve-jobs-speaks-during-an-apple-special-event-news-photo-1683661736.jpg?crop=0.800xw:0.563xh;0.0657xw,0.0147xh&resize=1200:*'),), title: Text("Perfil"), subtitle: Text("Post"), trailing: Icon(Icons.more_vert),);
  }
}