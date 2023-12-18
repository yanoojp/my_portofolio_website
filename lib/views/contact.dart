import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactTab extends StatelessWidget {
  const ContactTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // ListTile(
            //   leading: Icon(Icons.email),
            //   title: Text('Email Me'),
            //   subtitle: Text('your.email@example.com'),
            //   // onTap: () => launch('mailto:your.email@example.com'),
            // ),
            // Divider(),

            const ListTile(
              leading: Icon(Icons.business),
              title: Text('LinkedIn'),
              subtitle: Text('Your LinkedIn Profile'),
              // onTap: () => launch('https://www.linkedin.com/in/yourprofile'),
            ),
            const Divider(),

            ListTile(
              leading: const Icon(Icons.chat),
              title: const Text('X'),
              subtitle: const Text('@yanooo_jp'),
              onTap: () => launch('https://x.com/yanooo_jp?s=21'),
            ),
            const Divider(),

            const ListTile(
              leading: Icon(Icons.code),
              title: Text('GitHub'),
              subtitle: Text('yourGitHubUsername'),
              // onTap: () => launch('https://github.com/yourGitHubUsername'),
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
