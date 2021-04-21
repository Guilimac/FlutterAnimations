import 'package:flutter/material.dart';
import 'package:my_animmated_app/screens/home/widgets/list_data.dart';

class AnimatedListView extends StatelessWidget {
  final Animation<EdgeInsets> listSlidePosition;

  AnimatedListView({@required this.listSlidePosition});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        ListData(
          title: "Estudar Flutter",
          subtitle: "sempre que puder",
          image: AssetImage("images/perfil.jpg"),
          margin: listSlidePosition.value *1,
        ),
        ListData(
          title: "Estudar Flutter 2",
          subtitle: "sempre que puder 2",
          image: AssetImage("images/perfil.jpg"),
          margin: listSlidePosition.value *0,
        )
      ],
    );
  }
}
