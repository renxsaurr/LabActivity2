import 'package:flutter/material.dart';

void main() {
  runApp(const WaterTrackerApp());
}

class WaterTrackerApp extends StatelessWidget {
  const WaterTrackerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Water Tracker',
      theme: ThemeData(
        useMaterial3: false,
        scaffoldBackgroundColor: const Color(0xFFEFF3F6),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF365FC5),
          foregroundColor: Colors.white,
          elevation: 0,
        ),
      ),
      home: const WaterTrackerPage(),
    );
  }
}

class WaterTrackerPage extends StatelessWidget {
  const WaterTrackerPage({super.key});

  static const Color _navy = Color(0xFF202936);
  static const Color _blue = Color(0xFF3158C8);
  static const Color _muted = Color(0xFF657187);
  static const Color _paleBlue = Color(0xFFD8E7FF);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Water Tracker',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: Icon(Icons.more_horiz, color: Color(0xFFFFB300)),
          ),
        ],
      ),
      body: Container(
        color: const Color(0xFFEFF3F6),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.water_drop, size: 54, color: Color(0xFF3998F5)),
            const SizedBox(height: 4),
            const Text(
              'Stay Hydrated!',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: _navy,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 2),
            const Text(
              'Build a healthy daily habit',
              textAlign: TextAlign.center,
              style: TextStyle(color: _muted, fontSize: 14),
            ),
            const SizedBox(height: 12),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Column(
                children: [
                  Text(
                    'Daily Water Goal',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: _muted,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 1),
                  Text(
                    '8',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: _blue,
                      fontSize: 58,
                      height: 1.05,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 1),
                  Text(
                    'glasses per day',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: _muted, fontSize: 13),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            _TipContainer(text: 'Drink water regularly'),
            const SizedBox(height: 6),
            _TipContainer(text: 'Bring your water bottle'),
            const SizedBox(height: 8),
            const Text(
              'Every glass counts!',
              textAlign: TextAlign.center,
              style: TextStyle(color: _muted, fontSize: 11),
            ),
          ],
        ),
      ),
    );
  }
}

class _TipContainer extends StatelessWidget {
  const _TipContainer({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 11, horizontal: 8),
      decoration: BoxDecoration(
        color: const Color(0xFFD8E7FF),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Color(0xFF244DB5),
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
