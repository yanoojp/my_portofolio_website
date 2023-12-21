import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: 30.0,
            horizontal: MediaQuery.of(context).size.width * 0.2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
                child: Padding(
                    padding: EdgeInsets.all(30.0),
                    child: Text('Home',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold)))),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                  child: ResponsiveBuilder(
                    builder: (context, sizingInformation) {
                      if (sizingInformation.deviceScreenType ==
                          DeviceScreenType.mobile) {
                        return Column(
                          children: [
                            const CircleAvatar(
                                radius: 100,
                                backgroundImage: AssetImage('assets/face.jpg')),
                            const SizedBox(height: 20),
                            Text('Yushi Nogami (野上雄史) / yanoo (ヤヌー)',
                                style:
                                    Theme.of(context).textTheme.headlineSmall),
                            const SizedBox(height: 8.0),
                            const Text('Mobile Developer / Flutter Developer',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                          ],
                        );
                      } else {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const CircleAvatar(
                                radius: 100,
                                backgroundImage: AssetImage('assets/face.jpg')),
                            const SizedBox(width: 20),
                            Flexible(
                              child: Column(
                                children: [
                                  Text('Yushi Nogami (野上雄史) / yanoo (ヤヌー)',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineMedium),
                                  const SizedBox(height: 16.0),
                                  const Text('Mobile Developer / Flutter Developer',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                          ],
                        );
                      }
                    },
                  ),
                ),
                const SizedBox(width: 20),
              ],
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Hello! Welcome to my digital space!!",
                      style: Theme.of(context).textTheme.bodyLarge),
                  const SizedBox(height: 15),
                  Text(
                      "I am Yushi Nogami (野上雄史), a Mobile Developer with a passion for creating engaging and user-friendly applications.",
                      style: Theme.of(context).textTheme.bodyLarge),
                  const SizedBox(height: 15),
                  Text(
                      "My journey in mobile development began with a fascination for technology and a drive to build innovative solutions.",
                      style: Theme.of(context).textTheme.bodyLarge),
                  const SizedBox(height: 15),
                  Text(
                      "Since then, I have honed my skills in Flutter, TypeScript, and Firebase, contributing to various projects and consistently learning new techniques.",
                      style: Theme.of(context).textTheme.bodyLarge),
                  const SizedBox(height: 15),
                  Text(
                      "My work revolves around building applications that are not only functional but also aesthetically pleasing and intuitive to use.",
                      style: Theme.of(context).textTheme.bodyLarge),
                  const SizedBox(height: 15),
                  Text(
                      "I believe in continuous learning and improvement, and I strive to keep up with the latest trends in mobile development.",
                      style: Theme.of(context).textTheme.bodyLarge),
                  const SizedBox(height: 15),
                  Text(
                      "On this website, you'll find a showcase of my projects, insights into my creative process, and a glimpse of what drives my professional endeavors.",
                      style: Theme.of(context).textTheme.bodyLarge),
                  const SizedBox(height: 15),
                  Text(
                      "Whether you are a potential client, a fellow developer, or just someone interested in technology, I hope you find something here that inspires you.",
                      style: Theme.of(context).textTheme.bodyLarge),
                  const SizedBox(height: 15),
                  Text(
                      "Feel free to connect with me or explore my work. Let's embark on this visual journey together!",
                      style: Theme.of(context).textTheme.bodyLarge),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Technical Skills',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Wrap(
                    spacing: 8.0,
                    runSpacing: 4.0,
                    children: <Widget>[
                      Chip(label: Text('Flutter (Dart)')),
                      Chip(label: Text('TypeScript')),
                      Chip(label: Text('Firebase')),
                    ],
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Languages',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Wrap(
                    spacing: 8.0,
                    runSpacing: 4.0,
                    children: <Widget>[
                      Chip(label: Text('English')),
                      Chip(label: Text('Japanese')),
                      Chip(label: Text('Chinese')),
                    ],
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Soft Skills',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Wrap(
                    spacing: 8.0,
                    runSpacing: 4.0,
                    children: <Widget>[
                      Chip(label: Text('International Communication')),
                      Chip(label: Text('Teamwork')),
                      Chip(label: Text('Team Management')),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
