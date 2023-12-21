import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactTab extends StatelessWidget {
  const ContactTab({super.key});

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
                child: Text(
                  'My Contacts',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: ListTile(
                leading: const FaIcon(FontAwesomeIcons.linkedinIn),
                title: const Text('LinkedIn'),
                subtitle: const Text('Yushi Nogami\n(野上雄史)'),
                onTap: () => launchUrl(Uri.parse(
                    'https://www.linkedin.com/in/yushi-nogami-484622295')),
              ),
            ),
            const SizedBox(height: 20),
            const Divider(),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: ListTile(
                leading: const FaIcon(FontAwesomeIcons.twitter),
                title: const Text('X'),
                subtitle: const Text('@yanooo_jp'),
                onTap: () =>
                    launchUrl(Uri.parse('https://x.com/yanooo_jp?s=21')),
              ),
            ),
            const SizedBox(height: 20),
            const Divider(),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: ListTile(
                leading: const FaIcon(FontAwesomeIcons.github),
                title: const Text('GitHub'),
                subtitle: const Text('yanoojp'),
                onTap: () => launchUrl(Uri.parse('https://github.com/yanoojp')),
              ),
            ),
            const SizedBox(height: 20),
            const Divider(),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
