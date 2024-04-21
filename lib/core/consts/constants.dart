import 'package:portfolio_webapp/init_dependencies.dart';

class Constants {
  static const width = 1536.0;
  static const height = 739.20;

  static String about() {
    final age = calculateAge();
    return """
abstract interface class AboutSadik {
  String elevatorPitch();                   
  Map<String, dynamic> learningCurve();      
  List<String> passions();                
  List<String> rechargeMoments(); 
  List<Map<String, dynamic>> portfolio();  
  List<Map<String, dynamic>> trophyCabinet();  
  List<String> techStack();                 
}

class AboutSadikAthanikar implements AboutSadik {
  final String _name;
  final String _philosophy;
  final String _gender;
  final String _age;

  AboutSadikAthanikar({
    String name = "Sadik Amin Athanikar",
      String philosophy = "Knowledge is wealth",
      String gender = "Male",
      String age = "$age",    //Decode
    })  : _name = name,
        _philosophy = philosophy,
        _gender = gender,
        _age = age;

  @override
  String elevatorPitch() {
    return "I'm a passionate Flutter Developer who loves building awesome solutions. I'm all about getting things done efficiently and delivering top-notch results on time. I thrive in collaborative environments and enjoy connecting with like-minded individuals who share a passion for innovation.";
  }

  @override
  Map<String, dynamic> learningCurve() {
    return {
      "higherEducation": [
        {
          "institution":
              "Kolhapur Institute of Technology's College of Engineering",
          "degree": "B.Tech in Computer Science and Engineering",
          "cgpa": "8.62",
          "sgpa": [
            {"sem": "VI", "score": 8.36},
            {"sem": "V", "score": 9.36},
            {"sem": "IV", "score": 8.14},
            {"sem": "III", "score": 8.14},
            {"sem": "II", "score": 8.8},
            {"sem": "I", "score": 9.0}
          ]
        }
      ],
      "secondaryEducation": [
        {
          "institution": "Jaysingpur College, Jaysingpur",
          "stream": "Computer Science",
          "percentage": 84.54,
          "subjects": {
            "Computer Science": 180,
            "Physics": 85,
            "Chemistry": 84,
            "Maths": 89
          }
        },
        {
          "institution": "J.B. Patil Highschool, Chipri",
          "percentage": 93.00,
          "subjects": {"Science": 96, "Maths": 93, "Social Science": 98}
        }
      ]
    };
  }

  @override
  List<String> passions() {
    return [
      "Creative Thinking",
      "Exploring Books",
      "Playing Cricket",
      "Engaging in Intellectual Pursuits"
    ];
  }

  @override
  List<String> rechargeMoments() {
    return [
      "Brainstorming Ideas",
      "Learning from Inspiring Minds",
      "Reflecting on Experiences",
      "Expanding Knowledge"
    ];
  }

  @override
  List<Map<String, dynamic>> portfolio() {
    return [
      {
        "title": "Attendance and Course Management App",
        "description":
            "A Flutter application with Firebase backend for managing attendance and courses, featuring an admin panel and streamlined user interactions. Built using GetX for state management and following MVC architecture.",
        "technologies": ["Flutter", "Firebase", "GetX", "MVC"]
      },
      {
        "title": "Property Management App",
        "description":
            "A full-stack Flutter app facilitating property browsing and management, with functionalities like searching, filtering, and an intuitive user interface. Developed with GetX for state management and adhering to MVC architecture.",
        "technologies": ["Flutter", "Firebase", "GetX", "MVC"]
      },
      {
        "title": "AI-Based Multimedia App",
        "description":
            "A multimodal Flutter application leveraging the Gemini API for AI features like stable diffusion image generation and a chatbot interface. Implemented using GetX for state management within an MVC architecture.",
        "technologies": ["Flutter", "Gemini API", "GetX", "MVC"]
      },
      {
        "title": "Blog App",
        "description":
            "A platform for users to create accounts and publish blogs, emphasizing clean code architecture and utilizing BLoC for state management, Supabase as the database, and Hive for local blog storage.",
        "technologies": [
          "Flutter",
          "BLoC",
          "Supabase",
          "Hive",
          "Clean Architecture"
        ]
      },
      {
        "title": "Portfolio Web App",
        "description":
            "My personal portfolio website built with Flutter, prioritizing responsiveness and employing BLoC for state management within a clean code architecture. Leverages Firebase for data storage and integrates the Gemini API for an AI chatbot.",
        "technologies": [
          "Flutter",
          "Firebase",
          "BLoC",
          "Clean Architecture",
          "Gemini API"
        ]
      },
      {
        "title": "TaskOx App and Admin Web App",
        "description":
            "A freelance project involving a Flutter app and admin web app for task management, utilizing Firebase as the database and GetX for state management within an MVC architecture.",
        "technologies": ["Flutter", "Firebase", "GetX", "MVC"]
      },
      {
        "title": "Notepad++ Clone",
        "description":
            "A Java Swing application replicating the functionalities of Notepad++, offering features like multi-tab editing and text highlighting.",
        "technologies": ["Java", "Java Swing"]
      },
      {
        "title": "Java Chat Application",
        "description":
            "A Java-based chat application built using Java Swing for the user interface and socket programming for real-time communication.",
        "technologies": ["Java", "Java Swing", "Socket Programming"]
      },
    ];
  }
  
  @override
  List<Map<String, dynamic>> trophyCabinet() {
    return [
      {
        "title": "SIH 2023 Finalist",
        "description": "Made it to the finals of a national hackathon with a cool project about smart automation."
      },
      {
        "title": "Brain-it-on 2.0 Winner",
        "description": "Won first place at a national hackathon held at PVPIT, Sangli."
      },
      {
        "title": "Top of the Class",
        "description": "Ranked 3rd in my 2nd year and 1st in my 3rd year at college."
      }
    ];
  }

  @override
  List<String> techStack() {
    return [
      "Flutter",
      "Firebase",
      "Dart",
      "Python",
      "Java",
      "C++",
      "MySQL",
      "PostgreSQL",
      "Deep Learning",
      "TensorFlow"
    ];
  }
}
""";
  }
}
