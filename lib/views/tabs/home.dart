import 'package:flutter/material.dart';
import 'package:my_portfolio_website/utils/classes/contribution.dart';
import 'package:my_portfolio_website/utils/functions/fetch_contributions.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Contribution>>(
      future: fetchContributions(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else {
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
                        color: Colors.black.withOpacity(0.5),
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
                      radius: 100,
                      backgroundImage: AssetImage('assets/portfolio_face.jpg'),
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
                    const SizedBox(height: 16),
                    Text(
                      'Brief introduction about yourself. This can be a paragraph or two describing who you are, what you do, your experiences, skills, and what you are passionate about.',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Hello! I am [Yushi Nogami (野上雄史)], a professional [Your Profession]. Here, you can explore my work, get to know me, and see what I have to offer.',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                    // ListView.builder(
                    //   itemCount: snapshot.data?.length,
                    //   itemBuilder: (context, index) {
                    //     // var contribution = snapshot.data[index];
                    //     // Return a widget that displays the contribution data
                    //   },
                    // ),
                  ],
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
