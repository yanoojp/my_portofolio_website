import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_portfolio_website/providers/localization_provider.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsTab extends ConsumerWidget {
  const ProjectsTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localizationAsyncValue = ref.watch(localizationProvider);

    return localizationAsyncValue.when(
      data: (localization) => buildContent(context, localization),
      loading: () => const CircularProgressIndicator(),
      error: (e, _) => Text('Error: $e'),
    );
  }

  Widget buildContent(BuildContext context, Localization localization) {
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
                subtitle: Text(
                    localization.translate('restaurant_talks_explanation')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
