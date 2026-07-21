import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:medical_diagnostic_app1/core/navigation/route_paths.dart';
import 'package:medical_diagnostic_app1/features/diagnosis/controllers/diagnosis_cubit.dart';
import 'package:medical_diagnostic_app1/generated/l10n.dart';

// TEMPORARY screen — enter a session id and open the report preview.
class TempSessionPreviewScreen extends StatefulWidget {
  const TempSessionPreviewScreen({super.key});

  @override
  State<TempSessionPreviewScreen> createState() =>
      _TempSessionPreviewScreenState();
}

class _TempSessionPreviewScreenState extends State<TempSessionPreviewScreen> {
  final TextEditingController _controller = TextEditingController();
  bool _loading = false;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _openPreview() async {
    final sessionId = _controller.text.trim();
    if (sessionId.isEmpty) return;

    setState(() => _loading = true);
    context.read<DiagnosisCubit>().setSessionId(sessionId);
    await context.read<DiagnosisCubit>().getReport();
    if (mounted) {
      setState(() => _loading = false);
      context.goNamed(RoutePaths.fullReport);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.surface,
      appBar: AppBar(
        backgroundColor: colorScheme.surface,
        elevation: 0,
        title: Text(
          'Temp: Session Preview',
          style: theme.textTheme.titleMedium?.copyWith(
            color: colorScheme.onSurface,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                S.of(context).sessionIdLabel,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                ),
              ),
              const SizedBox(height: 8),
              TextField(
                controller: _controller,
                decoration: InputDecoration(
                  hintText: 'Enter session id...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 14,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: _loading ? null : _openPreview,
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: _loading
                      ? const CircularProgressIndicator()
                      : Text(S.of(context).viewPreviewBtn),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
