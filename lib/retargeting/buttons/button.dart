import 'package:flutter/material.dart';
import 'package:firebase_analytics/firebase_analytics.dart';

class RetargetingButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final String analyticsEvent;

  const RetargetingButton({
    super.key,
    required this.label,
    required this.onPressed,
    required this.analyticsEvent,
  });

  void _logAnalytics() {
    FirebaseAnalytics.instance.logEvent(
      name: analyticsEvent,
      parameters: {'button_label': label},
    );
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        _logAnalytics();
        onPressed();
      },
      child: Text(label),
    );
  }
}
