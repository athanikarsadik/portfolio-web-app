class Constants {
  static const width = 1536.0;
  static const height = 739.20;
  static const String aboutMe = """
class SadikAthanikar {
  // I can, because I did.
  // My vast variety of skills is continuously expanding.
  final String name;
  final String dateOfBirth;
  final String email;

  const SadikAthanikar({
    this.name = "Sadik Athanikar", 
    this.dateOfBirth = "02-12-2002", 
    this.email = "athanikarsadik212@gmail.com"
  });

  List<dynamic> workExperience() {
    return [
      {'2020-now': 'Full-stack Developer/Owner at Pixel Lab'},
      {'2023-now': 'Solutions Architect at Digitree Group S.A.'},
      {'2017-2023': 'Full-stack Developer at Digitree Group S.A.'},
      {'2013-2017': 'Full-Stack Designer at Digitree Group S.A.'},
      {'2006-now': 'Full-Stack Designer/developer at Yasio.dev'}
    ];
  }

  List<dynamic> education() {
    return [
      {
        '2012-2014':
            'Wyższa Szkoła Biznesu w Dąbrowie Górniczej - Master\'s Degree (mgr), Computer Science (IT)'
      },
      {
        '2008-2012':
            'Wyższa Szkoła Technologii Informatycznych w Katowicach - Bachelor of Engineering (inż.), Computer Science (IT)'
      }
    ];
  }

  List<String> skills() {
    return [
      "C++",
      "Java",
      "Data structures and algorithms",
      "Flutter development (Android/ iOS/ WebApp)",
      "Python",
      "SQL",
      "NoSql",
      "Firebase",
      "PostgreSql",
      "Supabase",
      "Github",
      "Machine learning",
      "Generative AI",
    ];
  }
}""";
}

class SadikAthanikar {
// I can, because I did.
// My vast variety of skills is continuously expanding.
  final String name;
  final String dateOfBirth;
  final String email;

  SadikAthanikar(
      {required this.name, required this.dateOfBirth, required this.email});

  List<dynamic> workExperience() {
    return [
      {'2020-now': 'Full-stack Developer/Owner at Pixel Lab'},
      {'2023-now': 'Solutions Architect at Digitree Group S.A.'},
      {'2017-2023': 'Full-stack Developer at Digitree Group S.A.'},
      {'2013-2017': 'Full-Stack Designer at Digitree Group S.A.'},
      {'2006-now': 'Full-Stack Designer/developer at Yasio.dev'}
    ];
  }

  List<dynamic> education() {
    return [
      {
        '2012-2014':
            'Wyższa Szkoła Biznesu w Dąbrowie Górniczej - Master\'s Degree (mgr), Computer Science (IT)'
      },
      {
        '2008-2012':
            'Wyższa Szkoła Technologii Informatycznych w Katowicach - Bachelor of Engineering (inż.), Computer Science (IT)'
      }
    ];
  }

  List<String> skills() {
    return [
      "C++",
      "Java",
      "Data structures and algorithms",
      "Flutter development (Android/ iOS/ WebApp)",
      "Python",
      "SQL",
      "NoSql",
      "Firebase",
      "PostgreSql",
      "Supabase",
      "Github",
      "Machine learning",
      "Generative AI",
    ];
  }
}
