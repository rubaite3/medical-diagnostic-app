import 'package:medical_diagnostic_app1/main_exports.dart';

class LanguageDropdown extends StatelessWidget {
  const LanguageDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return BlocBuilder<LocaleCubit, LocaleState>(
      builder: (context, state) {
        final current = state.locale.languageCode;
        return PopupMenuButton<String>(
          icon: Icon(Icons.language_outlined, color: colorScheme.onSurface),
          tooltip: S.of(context).language,
          onSelected: (code) {
            if (code != current) {
              context.read<LocaleCubit>().changeLocale(code);
            }
          },
          itemBuilder: (_) => S.delegate.supportedLocales
              .map(
                (l) => PopupMenuItem<String>(
                  value: l.languageCode,
                  child: Row(
                    children: [
                      Text(Utils.languageName(l.languageCode)),
                      const Spacer(),
                      if (l.languageCode == current)
                        Icon(Icons.check, size: 18, color: colorScheme.primary),
                    ],
                  ),
                ),
              )
              .toList(),
        );
      },
    );
  }
}
