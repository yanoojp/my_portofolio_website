import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsTab extends StatelessWidget {
  const ProjectsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: 30.0,
            horizontal: MediaQuery.of(context).size.width * 0.2),
        child: Column(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(30.0),
              child: Text(
                'My Projects',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.white,
                padding: const EdgeInsets.all(15.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                launchUrl(Uri.parse(
                    'https://apps.apple.com/jp/app/restaurant-talks/id1670850651?l=en-US'));
              },
              child: const ListTile(
                leading: Icon(Icons.work),
                title: Text('Restaurant Talks', style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Text(
                    'This is an app aimed at improving operations in restaurants.\nIts primary goal is to enhance communication between the hall and the kitchen.\nDesigned for use in the field, it focuses on a design that can be used quickly and easily with just a few taps with tablets and phones.'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
