import 'package:flutter/material.dart';
import 'disease.dart';

class Prediction extends StatefulWidget {
  @override
  _PredictionState createState() => _PredictionState();
}

class _PredictionState extends State<Prediction> {
  String selectedDisease = 'Heart Disease';
  List<String> dropdownItems = [
    'Heart Disease',
    'Diabetes',
    'Mental Health',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filter'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Selected Value: $selectedDisease',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButton<String>(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                style: TextStyle(color: Colors.black54, fontSize: 18),
                value: selectedDisease,
                isExpanded: true,
                onChanged: (newValue) {
                  setState(() {
                    selectedDisease = newValue!;
                  });
                },
                items: dropdownItems.map((item) {
                  return DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      selectionColor: Colors.blueAccent,
                    ),
                  );
                }).toList(),
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                if (selectedDisease != null) {
                  navigateToSelectedPage(selectedDisease);
                }
              },
              child: Text('Show Songs'),
            ),
          ],
        ),
      ),
    );
  }

  void navigateToSelectedPage(String selectedDisease) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DiseaseSongScreen(disease: selectedDisease),
      ),
    );
  }
}
