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
        appBar: AppBar(
          title: const Text('My Portfolio Website'),
          backgroundColor: Colors.yellow,
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Home'),
              Tab(text: 'Projects'),
              Tab(text: 'Contacts'),
            ],
          ),
        ),
        body: const Padding(
          padding: EdgeInsets.all(20.0),
          child: TabBarView(
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[HomeTab()],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[ProjectsTab()],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[ContactTab()],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
