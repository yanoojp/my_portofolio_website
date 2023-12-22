import 'package:flutter/material.dart';
import 'package:my_portfolio_website/utils/classes/localization.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsTab extends StatelessWidget {
  const ProjectsTab({super.key});

  @override
  Widget build(BuildContext context) {
    final appLocalization = AppLocalizations.of(context);

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
              child: ListTile(
                leading: const Icon(Icons.work),
                title: const Text(
                  'Restaurant Talks',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(appLocalization
                        ?.translate('restaurant_talks_explanation') ??
                    'Loading...'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
