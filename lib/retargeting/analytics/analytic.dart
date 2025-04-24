import 'package:firebase_analytics/firebase_analytics.dart';

void logProductViewedEvent() {
  FirebaseAnalytics.instance.logEvent(
    name: 'product_viewed',
    parameters: {'product_id': '1234'},
  );
}
