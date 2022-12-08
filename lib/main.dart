import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: PersonalCard()));

class PersonalCard extends StatefulWidget {
  const PersonalCard({Key? key}) : super(key: key);

  @override
  State<PersonalCard> createState() => _PersonalCardState();
}

class _PersonalCardState extends State<PersonalCard> {

  int yearsNum = 28;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text('Personal ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            yearsNum += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/beslimir.jpg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[800],
            ),
            const Text(
              'NAME',
              style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
            ),
            const SizedBox(height: 10.0),
            Text(
              'Marin Bešlo',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30.0),
            const Text(
              'YEARS',
              style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
            ),
            const SizedBox(height: 10.0),
            Text(
              '$yearsNum',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30.0),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                const SizedBox(width: 10.0),
                Text(
                  'marin@email.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
