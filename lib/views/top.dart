import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_portfolio_website/providers/language_provider.dart';
import 'package:my_portfolio_website/views/tabs/contact.dart';
import 'package:my_portfolio_website/views/tabs/home.dart';
import 'package:my_portfolio_website/views/tabs/projects.dart';

class TopPage extends ConsumerWidget {
  const TopPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: MediaQuery.of(context).size.height * 0.25,
                floating: false,
                pinned: true,
                backgroundColor: const Color(0xFF920012),
                flexibleSpace: FlexibleSpaceBar(
                  // background: Image.asset(
                  //   'assets/welcome_image_jaxa.jpg',
                  //   fit: BoxFit.fitHeight,
                  // ),
                  centerTitle: true,
                  titlePadding: const EdgeInsets.only(top: 100),
                  title: LayoutBuilder(
                    builder: (context, constraints) {
                      return SizedBox(
                        height: MediaQuery.of(context).size.height * 0.15,
                        child: const Text(
                          'Welcome to My Website',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                bottom: const TabBar(
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.white,
                  indicatorColor: Colors.brown,
                  tabs: [
                    Tab(text: 'Home'),
                    Tab(text: 'Projects'),
                    Tab(text: 'Contact'),
                  ],
                ),
                actions: <Widget>[
                  Consumer(
                    builder: (context, ref, child) {
                      final locale = ref.watch(languageProvider);
                      final isEnglish = locale.languageCode == 'en';

                      return Padding(
                        padding: const EdgeInsets.only(right: 20.0, top: 20),
                        child: GestureDetector(
                          onTap: () {
                            ref.read(languageProvider.notifier).state =
                                isEnglish
                                    ? const Locale('ja')
                                    : const Locale('en');
                          },
                          child: Container(
                            padding: const EdgeInsets.all(4.0),
                            decoration: BoxDecoration(
                              color: const Color(0xFFE6A260),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                if (!isEnglish) ...[
                                  const Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Text('EN',
                                        style: TextStyle(color: Colors.white)),
                                  ),
                                ],
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white, // Thumb color
                                  ),
                                ),
                                if (isEnglish) ...[
                                  const Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Text('JA',
                                        style: TextStyle(color: Colors.white)),
                                  ),
                                ],
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ];
          },
          body: const TabBarView(
            children: [
              HomeTab(),
              ProjectsTab(),
              ContactTab(),
            ],
          ),
        ),
      ),
    );
  }
}
