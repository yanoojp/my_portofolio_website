import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Container(
          //   width: double.infinity,
          //   height: 200,
          //   decoration: const BoxDecoration(
          //       // image: DecorationImage(
          //       //   fit: BoxFit.cover,
          //       //   // image: NetworkImage('https://your-image-url.com/hero.jpg'),
          //       // ),
          //       ),
          //   child: Container(
          //     padding: const EdgeInsets.all(16.0),
          //     color: Colors.black.withOpacity(0.5),
          //     child: const Text(
          //       'Welcome to My Portfolio',
          //       style: TextStyle(
          //         fontSize: 28,
          //         color: Colors.white,
          //         fontWeight: FontWeight.bold,
          //       ),
          //     ),
          //   ),
          // ),
          const SizedBox(height: 16),
          const CircleAvatar(
            radius: 100,
            backgroundImage: AssetImage('assets/face.jpg'),
          ),
          const SizedBox(height: 16),
          Text(
            'Yushi Nogami (野上雄史)',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 8),
          Text(
            'Your Job Title / Profession',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Hello! Welcome to my digital space. \n"
              "I am Yushi Nogami (野上雄史), a [Your Job Title/Profession], with a passion for [a few key interests related to your profession].\n"
              "My journey in [Your Field/Industry] began [mention when or how you started, or what inspired you].\n"
              "Since then, I have [talk about key achievements, experiences, or projects]. \n"
              "My work revolves around [briefly describe your work and what makes it unique or your approach to it]. \n"
              "I believe in [mention your work ethic, approach, or philosophy in your profession]. \n"
              "On this website, you'll find a showcase of my projects, insights into my creative process, and a glimpse of what drives my professional endeavors. \n"
              "Whether you are a potential client, a fellow [profession], or just someone interested in [relevant field], I hope you find something here that inspires you.\n"
              "Feel free to connect with me or explore my work. Let's embark on this visual journey together!",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          ///////////// connected to local server ///////////
          ///////////// check my_portfolio_node_js ///////////
          // Expanded(
          //   child: Image.network(
          //     'http://localhost:3000/github-stats',
          //     fit: BoxFit.cover,
          //   ),
          // )
        ],
      ),
    );
  }
}
