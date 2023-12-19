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
        appBar: PreferredSize(
          preferredSize:
              Size.fromHeight(MediaQuery.of(context).size.height * 0.25),
          child: AppBar(
            title: const Text(
              'Welcome to My Portfolio',
              style: TextStyle(color: Colors.white),
            ),
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/welcome_image_jaxa.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            bottom: const TabBar(
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white,
              tabs: [
                Tab(text: 'Home'),
                Tab(text: 'Projects'),
                Tab(text: 'Contacts'),
              ],
            ),
          ),
        ),
        body: const Padding(
          padding: EdgeInsets.all(20.0),
          child: TabBarView(
            children: [
              SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[HomeTab()]),
              ),
              SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[ProjectsTab()]),
              ),
              SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[ContactTab()]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
