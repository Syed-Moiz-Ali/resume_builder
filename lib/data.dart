class ResumeData {
  final String name;
  final String initials;
  final String location;
  final String locationLink;
  final String about;
  final String summary;
  final String avatarUrl;
  final String personalWebsiteUrl;
  final Map<String, dynamic> contact;
  final List<Map<String, dynamic>> education;
  final List<Map<String, dynamic>> work;
  final List<String> skills;
  final List<Map<String, dynamic>> projects;

  ResumeData({
    required this.name,
    required this.initials,
    required this.location,
    required this.locationLink,
    required this.about,
    required this.summary,
    required this.avatarUrl,
    required this.personalWebsiteUrl,
    required this.contact,
    required this.education,
    required this.work,
    required this.skills,
    required this.projects,
  });
}

final resumeData = ResumeData(
  name: "Bartosz Jarocki",
  initials: "BJ",
  location: "Wrocław, Poland, CET",
  locationLink: "https://www.google.com/maps/place/Wrocław",
  about:
      "Full Stack Engineer focused on building products with extra attention to detail",
  summary:
      "As a Full Stack Engineer, I have successfully taken multiple products from 0 to 1. I lead teams effectively, ensuring an environment where people can do their best work. Currently, I work mostly with TypeScript, React, Node.js, and GraphQL. I have over 8 years of experience in working remotely with companies all around the world.",
  avatarUrl: "https://avatars.githubusercontent.com/u/1017620?v=4",
  personalWebsiteUrl: "https://jarocki.me",
  contact: {
    "email": "bartosz.jarocki@hey.com",
    "tel": "+48530213401",
    "social": [
      {
        "name": "GitHub",
        "url": "https://github.com/BartoszJarocki",
        // Add the icon mapping here
      },
      {
        "name": "LinkedIn",
        "url": "https://www.linkedin.com/in/bjarocki/",
        // Add the icon mapping here
      },
      {
        "name": "X",
        "url": "https://x.com/BartoszJarocki",
        // Add the icon mapping here
      },
    ],
  },
  education: [
    {
      "school": "Wrocław University of Technology",
      "degree": "Bachelor's Degree in Control systems engineering and Robotics",
      "start": "2007",
      "end": "2010",
    },
  ],
  work: [
    {
      "company": "Parabol",
      "link": "https://parabol.co",
      "badges": ["Remote"],
      "title": "Senior Full Stack Developer",
      // Add the logo mapping here
      "start": "2021",
      "end": "2024",
      "description":
          "Implemented new features, led squad, worked on improving the way developers ship the code, started migration from Emotion to Tailwind CSS and more. Technologies: React, TypeScript, GraphQL",
    },
    // ... Add other work experiences
  ],
  skills: [
    "JavaScript",
    "TypeScript",
    "React/Next.js/Remix",
    "Node.js",
    "GraphQL",
    "Relay",
    "WebRTC"
  ],
  projects: [
    {
      "title": "Consultly",
      "techStack": [
        "Side Project",
        "TypeScript",
        "Next.js",
        "Vite",
        "GraphQL",
        "WebRTC"
      ],
      "description": "A platform to build and grow your online business",
      // Add the logo mapping here
      "link": {
        "label": "consultly.com",
        "href": "https://consultly.com/",
      },
    },
  ],
);
