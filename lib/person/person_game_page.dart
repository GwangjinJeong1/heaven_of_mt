import 'package:flutter/material.dart';
import 'game_person.dart';
import 'game_person_app.dart';

class PersonGamePage extends StatefulWidget {
  final String id;
  const PersonGamePage({
    super.key,
    required this.id,
  });

  @override
  State<PersonGamePage> createState() => _PersonGamePageState();
}

class _PersonGamePageState extends State<PersonGamePage> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    if (width > 500) {
      return PersonWebGame(id: widget.id);
    } else {
      return PersonAppGame(id: widget.id);
    }
  }
}