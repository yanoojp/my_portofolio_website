import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
            ListTile(
              leading: const FaIcon(FontAwesomeIcons.linkedinIn),
              title: const Text('LinkedIn'),
              subtitle: const Text('Yushi Nogami (野上雄史)'),
              onTap: () => launchUrl(Uri.parse(
                  'https://www.linkedin.com/in/yushi-nogami-484622295')),
            ),
            const Divider(),
            ListTile(
              leading: const FaIcon(FontAwesomeIcons.twitter),
              title: const Text('X'),
              subtitle: const Text('@yanooo_jp'),
              onTap: () => launchUrl(Uri.parse('https://x.com/yanooo_jp?s=21')),
            ),
            const Divider(),
            ListTile(
              leading: const FaIcon(FontAwesomeIcons.github),
              title: const Text('GitHub'),
              subtitle: const Text('yanoojp'),
              onTap: () => launchUrl(Uri.parse('https://github.com/yanoojp')),
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}