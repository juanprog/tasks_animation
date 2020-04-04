import 'package:flutter/material.dart';
import 'package:tasks_animation/screens/home/widgets/list_data.dart';

class AnimatedListView extends StatelessWidget {
  final Animation<EdgeInsets> listSlidePosition;

  AnimatedListView({@required this.listSlidePosition});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        ListData(
          title: "Estudar Dart",
          subtitle: "Iniciar segunda-feira",
          image: AssetImage("images/perfil.png"),
          margin: listSlidePosition.value * 3,
        ),
        ListData(
          title: "Estudar Flutter",
          subtitle: "Assim que começar o Flutter",
          image: AssetImage("images/perfil.png"),
          margin: listSlidePosition.value * 2,
        ),
        ListData(
          title: "Estudar Dart novamente",
          subtitle: "Na próxima semana",
          image: AssetImage("images/perfil.png"),
          margin: listSlidePosition.value * 1,
        ),
        ListData(
          title: "Estudar Flutter novamente",
          subtitle: "Na próxima semana",
          image: AssetImage("images/perfil.png"),
          margin: listSlidePosition.value * 0,
        ),
      ],
    );
  }
}
