import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}






class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Choose Your Department',
      theme: ThemeData(
        primaryColor: Colors.blue, // Customize your primary color
        fontFamily: 'Roboto', // Customize the font family
      ),
      home: ChooseDepartmentsPage(),
    );
  }
}

class ChooseDepartmentsPage extends StatefulWidget {
  @override
  _ChooseDepartmentsPageState createState() => _ChooseDepartmentsPageState();
}

class _ChooseDepartmentsPageState extends State<ChooseDepartmentsPage> {
  List<String> technologyDepartments = [
    'Software Engineering',
    'Computer Science',
    'Information Technology',
    'Information Systems',
    'Information Science',
    'GIS',
    'Statistics',
  ];

  final TextStyle departmentTextStyle = TextStyle(
    color: Colors.black, // Text color
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Your Department'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Two departments per row
        ),
        itemCount: technologyDepartments.length,
        itemBuilder: (context, index) {
          final department = technologyDepartments[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DepartmentDetailsPage(department),
                ),
              );
            },
            child: Card(
              elevation: 5,
              margin: EdgeInsets.all(10),
              color: Colors.blue, // Set the card background color to blue
              child: Center(
                child: Text(
                  department,
                  style: departmentTextStyle,
                  textAlign: TextAlign.center, // Center the text
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class DepartmentDetailsPage extends StatelessWidget {
  final String department;

  DepartmentDetailsPage(this.department);

  final TextStyle detailsTextStyle = TextStyle(
    color: Colors.black, // Text color
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Your Batch'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('First Year', style: detailsTextStyle),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SemesterPage('First Year'),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Second Year', style: detailsTextStyle),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SemesterPage('Second Year'),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Third Year', style: detailsTextStyle),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SemesterPage('Third Year'),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Fourth Year', style: detailsTextStyle),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SemesterPage('Fourth Year'),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Fifth Year', style: detailsTextStyle),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SemesterPage('Fifth Year'),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class SemesterPage extends StatelessWidget {
  final String semester;

  SemesterPage(this.semester);

  final TextStyle semesterTextStyle = TextStyle(
    color: Colors.black, // Text color
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Semester'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('First Semester', style: semesterTextStyle),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SubjectListPage(),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Second Semester', style: semesterTextStyle),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SubjectListPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class SubjectListPage extends StatelessWidget {
  final List<String> subjects = [
    'Subject 1',
    'Subject 2',
    'Subject 3',
    'Subject 4',
    'Subject 5',
    'Subject 6',
    'Subject 7',
    'Subject 8',
  ];

  final TextStyle subjectTextStyle = TextStyle(
    color: Colors.black, // Text color
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose a Subject'),
      ),
      body: ListView.builder(
        itemCount: subjects.length,
        itemBuilder: (context, index) {
          final subject = subjects[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChapterPage(subject),
                ),
              );
            },
            child: Card(
              elevation: 5,
              margin: EdgeInsets.all(10),
              color: Colors.blue, // Set the card background color to blue
              child: Center(
                child: Text(
                  subject,
                  style: subjectTextStyle,
                  textAlign: TextAlign.center, // Center the text
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class ChapterPage extends StatelessWidget {
  final String subject;

  ChapterPage(this.subject);

  final TextStyle chapterTextStyle = TextStyle(
    color: Colors.black, // Text color
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    final List<Widget> chapters = List.generate(
      8,
      (index) => ListTile(
        title: Text('Chapter ${index + 1}', style: chapterTextStyle),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Chapter'),
      ),
      body: ListView(
        children: chapters,
      ),
    );
  }
}
