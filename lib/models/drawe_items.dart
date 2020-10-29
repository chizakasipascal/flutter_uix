import 'package:flutter/cupertino.dart';

class Menu {
  final int id;
  final String title;
  final Widget widget;

  Menu({this.id, this.title, this.widget});
}

final compagy = Menu(id: 1, title: "Compagy");
final securitysetings = Menu(id: 2, title: "Security setings");
final remotejobs = Menu(id: 3, title: "Remote jobs");
final uttlies = Menu(id: 4, title: "Uttlies");
final about = Menu(id: 5, title: "About");
final drawlist = [compagy, securitysetings, remotejobs, uttlies, about];
