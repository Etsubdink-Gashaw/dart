import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animated Bottom Navigation Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.indigo, useMaterial3: true),
      home: SampleProgressIndicator(),
    );
  }
}

class SampleProgressIndicator extends StatefulWidget {
  @override
  State<SampleProgressIndicator> createState() =>
      _SampleProgressIndicatorState();
}

class _SampleProgressIndicatorState extends State<SampleProgressIndicator>
    with TickerProviderStateMixin {
  double _progress = 0.3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flexible Widget'),
        backgroundColor: const Color.fromARGB(255, 142, 142, 142),
        elevation: 4,
      ),
      backgroundColor: const Color.fromARGB(255, 104, 104, 104),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text('Circular Progress Indicators'),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircularProgressIndicator(value: _progress),
                CircularProgressIndicator(
                  value: _progress,
                  backgroundColor: Colors.grey[300],
                  valueColor: AlwaysStoppedAnimation(Colors.green),
                ),
              ],
            ),
            SizedBox(height: 40),
            Text('Linear Progress Indicators'),
            SizedBox(height: 20),

            LinearProgressIndicator(value: _progress),
            SizedBox(height: 20),
            LinearProgressIndicator(
              value: _progress,
              backgroundColor: Colors.grey[300],
              valueColor: AlwaysStoppedAnimation(Colors.orange),
            ),
            SizedBox(height: 40),
            Slider(
              value: _progress,
              onChanged: (value) => setState(() => _progress = value),
            ),
          ],
        ),
      ),
    );
  }
}
