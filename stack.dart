import 'package:flutter/material.dart';

class SampleStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topStart,
      fit: StackFit.loose,
      children: [
        Container(
          width: 200,
          height: 150,
          decoration: BoxDecoration(
            color: Colors.blue.withOpacity(0.7),
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Center(
            child: Text(
              'Bottom Layer',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ),
        Container(
          width: 150,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.red.withOpacity(0.8),
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Center(
            child: Text(
              'Middle Layer',
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          ),
        ),
        Positioned(
          top: 20,
          right: 20,
          child: Container(
            width: 80,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.green.withOpacity(0.9),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Center(
              child: Text(
                'Positioned',
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
