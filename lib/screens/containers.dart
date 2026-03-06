import 'package:flutter/material.dart';
import 'package:my_first_app_flutter/widgets/appbar_widget.dart';

class ContainersScreen extends StatelessWidget {
  const ContainersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppbarWidget(
      title: 'Containers',
      ),
      body: Column(
        children: [
          Container(
            color: Colors.amber,
            height: 200,
            width: double.infinity,
            child: Text(
              'Box',
              style: TextStyle(fontSize: 45, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ContainerIcon(),
              ContainerIcon(),
              ContainerIcon(),
            ],
          ),
          Container(
            width: double.infinity,
            height: 250,
            clipBehavior: Clip.hardEdge,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
            child: Image.network(
              'https://i.redd.it/3wh2ttupq6if1.jpeg',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}

class ContainerIcon extends StatelessWidget {
  const ContainerIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.greenAccent,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Icon(Icons.bug_report, size: 50),
    );
  }
}