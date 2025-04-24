import 'package:firebase_messaging/firebase_messaging.dart'
    as firebase_messaging;

firebase_messaging.FirebaseMessaging messaging =
    firebase_messaging.FirebaseMessaging.instance;

void setupFCM() {
  firebase_messaging.FirebaseMessaging.onMessage.listen((
    firebase_messaging.RemoteMessage message,
  ) {
    // Show a local notification or update UI
  });
}

void subscribeToTopic() {
  firebase_messaging.FirebaseMessaging.instance.subscribeToTopic(
    "abandoned_cart",
  );
}
