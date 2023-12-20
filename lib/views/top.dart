import 'package:flutter/material.dart';
import 'package:my_portfolio_website/views/tabs/contact.dart';
import 'package:my_portfolio_website/views/tabs/home.dart';
import 'package:my_portfolio_website/views/tabs/projects.dart';

class TopPage extends StatelessWidget {
  const TopPage({super.key});

  @override
  Widget build(BuildContext context) {
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
                backgroundColor: Color(0xFF920012),
                flexibleSpace: FlexibleSpaceBar(
                  // background: Image.asset(
                  //   'assets/welcome_image_jaxa.jpg',
                  //   fit: BoxFit.fitHeight,
                  // ),
                  centerTitle: true,
                  title: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.15,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Welcome to My Portfolio',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 55,)
                      ],
                    ),
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
