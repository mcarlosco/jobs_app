import 'package:flutter/material.dart';

import '../../data/exceptions.dart';
import '../../data/models.dart';
import '../../data/repositories.dart';

import '../utils/feedback_util.dart';
import '../views.dart';
import '../widgets.dart';

final class FormScreen extends StatelessWidget {
  final Job? job;

  final CountriesRepository _countriesRepository;
  final JobsRepository _jobsRepository;
  final TeamsRepository _teamsRepository;

  const FormScreen({
    super.key,
    this.job,
  })  : _countriesRepository = const CountriesRepository(),
        _jobsRepository = const JobsRepository(),
        _teamsRepository = const TeamsRepository();

  bool get _hasJob => job != null;

  @override
  Widget build(BuildContext context) {
    return OurScreen(
      title: 'Vacante',
      child: FormView(
        teams: _teamsRepository.get(),
        countries: _countriesRepository.get(),
        onSaved: (job) {
          _onSaved(context, job);
        },
        job: job,
      ),
    );
  }

  void _onSaved(BuildContext context, Job job) {
    try {
      _jobsRepository.save(job, unique: _hasJob);
      Navigator.of(context).pop(job);
      showSnackBar(context, 'Vacante guardada');
    } on NonUniqueException {
      showSnackBar(context, 'Vacante repetida...');
    }
  }
}
