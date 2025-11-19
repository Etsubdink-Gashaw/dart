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
      home: const SampleFlexible(),
    );
  }
}

class SampleFlexible extends StatefulWidget {
  const SampleFlexible({super.key});

  @override
  State<SampleFlexible> createState() => _SampleFlexibleState();
}

class _SampleFlexibleState extends State<SampleFlexible> {
  int _flex1 = 1;
  int _flex2 = 1;
  FlexFit _fit1 = FlexFit.loose;
  FlexFit _fit2 = FlexFit.loose;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flexible Widget'),
        backgroundColor: const Color.fromARGB(255, 142, 142, 142),
        elevation: 4,
      ),
      backgroundColor: const Color.fromARGB(255, 104, 104, 104),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 400),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Text('Flex 1: '),
                            Expanded(
                              child: Slider(
                                value: _flex1.toDouble(),
                                min: 1,
                                max: 5,
                                onChanged: (value) =>
                                    setState(() => _flex1 = value.toInt()),
                              ),
                            ),
                            Text(_flex1.toString()),
                          ],
                        ),
                        Row(
                          children: [
                            const Text('Fit 1: '),
                            DropdownButton<FlexFit>(
                              value: _fit1,
                              onChanged: (fit) => setState(() => _fit1 = fit!),
                              items: const [
                                DropdownMenuItem(
                                  value: FlexFit.loose,
                                  child: Text('Loose'),
                                ),
                                DropdownMenuItem(
                                  value: FlexFit.tight,
                                  child: Text('Tight'),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Text('Flex 2: '),
                            Expanded(
                              child: Slider(
                                value: _flex2.toDouble(),
                                min: 1,
                                max: 5,
                                onChanged: (value) =>
                                    setState(() => _flex2 = value.toInt()),
                              ),
                            ),
                            Text(_flex2.toString()),
                          ],
                        ),
                        Row(
                          children: [
                            const Text('Fit 2: '),
                            DropdownButton<FlexFit>(
                              value: _fit2,
                              onChanged: (fit) => setState(() => _fit2 = fit!),
                              items: const [
                                DropdownMenuItem(
                                  value: FlexFit.loose,
                                  child: Text('Loose'),
                                ),
                                DropdownMenuItem(
                                  value: FlexFit.tight,
                                  child: Text('Tight'),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Expanded(
                  child: Column(
                    children: [
                      const Text(
                        'Flexible vs Expanded comparison:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 16),
                      Container(
                        height: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          children: [
                            Flexible(
                              child: Container(
                                padding: const EdgeInsets.all(8),
                                color: Colors.orange[100],
                                child: const Text(
                                  'This is a flexible text that can wrap and adjust its size based on content',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            Container(
                              width: 60,
                              color: Colors.purple[300],
                              child: const Center(
                                child: Text(
                                  'Fixed',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
