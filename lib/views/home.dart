import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height,
        ),
        child: IntrinsicHeight(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 200, 
                decoration: const BoxDecoration(
                  // image: DecorationImage(
                  //   fit: BoxFit.cover,
                  //   // image: NetworkImage('https://your-image-url.com/hero.jpg'),
                  // ),
                ),
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  color:
                      Colors.black.withOpacity(0.5),
                  child: const Text(
                    'Welcome to My Portfolio',
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const CircleAvatar(
                radius: 50,
                // backgroundImage: AssetImage(),
              ),
              const SizedBox(height: 16),
              Text(
                'Your Name',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 8),
              Text(
                'Your Job Title / Profession',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 16),
              Text(
                'Brief introduction about yourself. This can be a paragraph or two describing who you are, what you do, your experiences, skills, and what you are passionate about.',
                style: Theme.of(context).textTheme.bodyMedium,
              ),

              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Hello! I am [Your Name], a professional [Your Profession]. Here, you can explore my work, get to know me, and see what I have to offer.',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
