import 'package:flutter/material.dart';
// import 'package:flutter_icons/flutter_icons.dart'; // You may need to add this package to your pubspec.yaml

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resume Builder',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ResumePage(),
    );
  }
}

class ResumePage extends StatelessWidget {
  const ResumePage({super.key});

  @override
  Widget build(BuildContext context) {
    //  final pdf = pw.Document();
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Bartosz Jarocki",
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Wrocław, Poland, CET",
                          style: TextStyle(
                            fontSize: 14.0,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          "Full Stack Engineer focused on building products with extra attention to detail",
                          style: TextStyle(fontSize: 14.0),
                        ),
                        SizedBox(height: 16.0),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: CircleAvatar(
                      radius: 40.0,
                      backgroundImage: NetworkImage(
                        "https://avatars.githubusercontent.com/u/1017620?v=4",
                      ),
                    ),
                  ),
                ],
              ),
              buildSection(
                "About",
                const Text(
                    "As a Full Stack Engineer, I have successfully taken multiple products from 0 to 1. I lead teams effectively, ensuring an environment where people can do their best work. Currently, I work mostly with TypeScript, React, Node.js, and GraphQL. I have over 8 years of experience in working remotely with companies all around the world."),
              ),
              buildSection(
                "Work Experience",
                buildWorkExperience(),
              ),
              buildSection(
                "Education",
                buildEducation(),
              ),
              buildSection(
                "Skills",
                buildSkills(),
              ),
              buildSection(
                "Projects",
                buildProjects(),
              ),
              ElevatedButton(
                onPressed: () {
                  // Add logic for handling button press
                },
                child: const Text('Generate Resume'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSection(String title, Widget content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 16.0),
        Text(
          title,
          style: const TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8.0),
        content,
      ],
    );
  }

  Widget buildWorkExperience() {
    return Column(
      children: [
        buildWorkCard(
          "Parabol",
          "https://parabol.co",
          ["Remote"],
          "Senior Full Stack Developer",
          "2021",
          "2024",
          "Implemented new features, led squad, worked on improving the way developers ship the code, started migration from Emotion to Tailwind CSS and more. Technologies: React, TypeScript, GraphQL",
        ),
        // Add more work experience cards as needed
      ],
    );
  }

  Widget buildEducation() {
    return Column(
      children: [
        buildEducationCard(
          "Wrocław University of Technology",
          "Bachelor's Degree in Control systems engineering and Robotics",
          "2007",
          "2010",
        ),
        // Add more education cards as needed
      ],
    );
  }

  Widget buildSkills() {
    return Wrap(
      spacing: 8.0,
      children: [
        buildBadge("JavaScript"),
        buildBadge("TypeScript"),
        buildBadge("React/Next.js/Remix"),
        buildBadge("Node.js"),
        buildBadge("GraphQL"),
        buildBadge("Relay"),
        buildBadge("WebRTC"),
      ],
    );
  }

  Widget buildProjects() {
    return GridView.count(
      crossAxisCount: 1,
      crossAxisSpacing: 8.0,
      mainAxisSpacing: 8.0,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        buildProjectCard(
          "Consultly",
          [
            "Side Project",
            "TypeScript",
            "Next.js",
            "Vite",
            "GraphQL",
            "WebRTC"
          ],
          "A platform to build and grow your online business",
          "https://consultly.com/",
        ),
        // Add more project cards as needed
      ],
    );
  }

  Widget buildWorkCard(
    String company,
    String link,
    List<String> badges,
    String title,
    String start,
    String end,
    String description,
  ) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  company,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
                Text(
                  "$start - $end",
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8.0),
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(description),
            const SizedBox(height: 8.0),
            Row(
              children: badges.map((badge) => buildBadge(badge)).toList(),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildEducationCard(
    String school,
    String degree,
    String start,
    String end,
  ) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              school,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              degree,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "$start - $end",
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildBadge(String text) {
    return Chip(
      label: Text(text),
    );
  }

  Widget buildProjectCard(
    String title,
    List<String> techStack,
    String description,
    String link,
  ) {
    return Container(
      width: double.infinity,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              const SizedBox(height: 8.0),
              Text(description),
              const SizedBox(height: 8.0),
              Wrap(
                children: techStack.map((tech) => buildBadge(tech)).toList(),
              ),
              const SizedBox(height: 8.0),
              ElevatedButton(
                onPressed: () {
                  // Add logic for handling button press
                },
                child: const Text('Visit Project'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
