import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../data/models.dart';

import '../screens.dart';

final class OurApp extends StatelessWidget {
  const OurApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jobs App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(1, 100, 40, 205),
        ),
        useMaterial3: true,
        textTheme: GoogleFonts.lexendTextTheme(),
      ),
      home: const JobsScreen(),
      routes: {
        jobsScreenPath: (_) => const JobsScreen(),
        detailsScreenPath: (context) =>
            DetailsScreen(ModalRoute.of(context)!.settings.arguments as Job),
        formScreenPath: (context) =>
            FormScreen(job: ModalRoute.of(context)!.settings.arguments as Job?),
      },
    );
  }
}
