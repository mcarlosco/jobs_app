import 'package:flutter/material.dart';

import '../../data/models.dart';

import '../widgets.dart';

final class DetailsView extends StatelessWidget {
  final Job job;

  final VoidCallback onDeleted;

  const DetailsView(
    this.job, {
    super.key,
    required this.onDeleted,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              job.title,
              style: textTheme.titleLarge,
            ),
            const OurSpacer.x1(),
            Text(
              job.team.name,
              style: textTheme.titleMedium,
            ),
            const OurSpacer.x2(),
            for (final country in job.countries)
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Text(
                  country.compoundName,
                  style: textTheme.bodySmall,
                ),
              ),
            const OurSpacer.x2(),
            Text(job.description),
            const OurSpacer.x2(),
            const Divider(),
            const OurSpacer.x2(),
            Text(
              'Construimos valor para ti',
              style: textTheme.titleLarge,
            ),
            const OurSpacer.x2(),
            const Text(
              'Aquí aumentarás de forma acelerada tu valor personal, '
              'potenciarás tus capacidades técnicas, de liderazgo y comunicación.',
            ),
            const OurSpacer.x2(),
            const Text(
              'Trabajarás con grandes clientes, en proyectos de alto impacto en el mundo, '
              'y con conocimiento asimétrico.',
            ),
            const OurSpacer.x2(),
            const Text(
              'Cultura que mueve. Estarás rodeado de una comunidad de altos estándares, '
              'compañeros dignos de admirar, vivirás una cultura de autogestión, y estarás '
              'acompañado de líderes que inspiran y son buena compañía.',
            ),
            const OurSpacer.x2(),
            const Text(
              'Vivirás el poder transformador de la educación con nuestro social commitment, '
              'donde podrás apoyar iniciativas para ayudar a que jóvenes culminen exitosamente '
              'sus estudios.',
            ),
            const OurSpacer.x1(),
            Align(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: onDeleted,
                child: const Text(
                  'Eliminar vacante',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
