import 'package:flutter/material.dart';
import 'package:velog_exercise/presentation/widget/const_column/const_column.dart';

class ContainerConstScreen extends StatelessWidget {
  const ContainerConstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ConstColumn(title: '테스트', children: [Container(
              width: 100,
              height: 100,
              padding: const EdgeInsets.all(6),
              child: const Icon(Icons.add),
            ),
              const SizedBox(
                width: 100,
                height: 100,
                child: Padding(
                  padding: EdgeInsets.all(6),
                  child: Icon(Icons.add),
                ),
              )],),
            ConstColumn(title: 'SizedBox', children: [
              Container(
                width: 100,
                height: 100,
              ),
              const SizedBox(
                width: 100,
                height: 100,
              ),],),
            ConstColumn(title: 'SizedBox', children: [
              Container(
                color: Colors.amber,
                child: const Icon(Icons.add),
              ),
              const ColoredBox(
                color: Colors.amber,
                child: Icon(Icons.add),
              ),],),
            ConstColumn(title: 'Padding', children: [
              Container(
                color: Colors.amber,
                padding: const EdgeInsets.all(8),
                child: Icon(Icons.add),
              ),
              const  ColoredBox(
                  color: Colors.amber,
                  child:Padding(
                      padding: EdgeInsets.all(8),
                    child: Icon(Icons.add),
                  )
              ),],),
            ConstColumn(title: 'Margin', children: [
              Container(
                margin: const EdgeInsets.all(8),
                child: const Icon(Icons.add),
              ),
              const Padding(
                padding: EdgeInsets.all(8),
                child: Icon(Icons.add),
              ),],),
            ConstColumn(title: 'Align', children: [
              Container(
                alignment: Alignment.bottomLeft,
                child: const Icon(Icons.add),
              ),
              const Align(
                alignment: Alignment.bottomLeft,
                child: Icon(Icons.add),
              ),],),
          ],
        ),
      ),
    );
  }
}

