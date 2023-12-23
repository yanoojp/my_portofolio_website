import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_portfolio_website/providers/localization_provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeTab extends ConsumerWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localization = ref.watch(localizationProvider);

    return localization.when(
      data: (localizationData) =>
          _buildLocalizedContent(context, localizationData),
      loading: () => const CircularProgressIndicator(),
      error: (err, stack) => Text('Error: $err'),
    );
  }

  Widget _buildLocalizedContent(
      BuildContext context, Localization localizationData) {
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
                                backgroundImage:
                                    AssetImage('assets/images/face.jpg')),
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
                                backgroundImage:
                                    AssetImage('assets/images/face.jpg')),
                            const SizedBox(width: 20),
                            Flexible(
                              child: Column(
                                children: [
                                  Text('Yushi Nogami (野上雄史) / yanoo (ヤヌー)',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineMedium),
                                  const SizedBox(height: 16.0),
                                  const Text(
                                      'Mobile Developer / Flutter Developer',
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
                  Text(
                    localizationData.translate('home_message'),
                    style: const TextStyle(height: 3),
                  )
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
                      Chip(label: Text('Vue.js')),
                      Chip(label: Text('React.js')),
                      Chip(label: Text('AWS')),
                      Chip(label: Text('node.js')),
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
