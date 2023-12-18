import 'package:flutter/material.dart';

class ProjectsTab extends StatelessWidget {
  const ProjectsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'My Projects',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.work),
              title: const Text('Restaurant Talks'),
              subtitle: const Text(
                  'This is an app aimed at improving operations in restaurants.\nIts primary goal is to enhance communication between the hall and the kitchen.\nDesigned for use in the field, it focuses on a design that can be used quickly and easily with just a few taps with tablets and phones.'),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
