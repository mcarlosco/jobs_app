import 'package:flutter/material.dart';

import '../../data/models.dart';

import '../widgets.dart';

final class JobsView extends StatelessWidget {
  final List<Job> jobs;

  final void Function(Job job) onCardOpened;

  const JobsView(
    this.jobs, {
    super.key,
    required this.onCardOpened,
  });

  @override
  Widget build(BuildContext context) {
    return jobs.isEmpty
        ? const Padding(
            padding: EdgeInsets.all(20),
            child: Center(
              child: Text(
                'No tenemos vacantes en este momento',
                textAlign: TextAlign.center,
              ),
            ),
          )
        : ListView(
            padding: const EdgeInsets.all(20),
            children: [
              for (final job in jobs)
                OurCard.outlined(
                  headline: job.title,
                  subhead: job.team.name,
                  supportingText:
                      job.countries.map((country) => country.name).join(' • '),
                  buttonText: 'Ver detalles',
                  onButtonPressed: () {
                    onCardOpened(job);
                  },
                  headlineBolded: job.isUrgent,
                ),
            ],
          );
  }
}
