import '../tdapi.dart';

/// A new incoming event; for bots only
class UpdateNewCustomEvent extends Update {
  UpdateNewCustomEvent({required this.event});

  /// [event] A JSON-serialized event
  final String event;

  static const String CONSTRUCTOR = 'updateNewCustomEvent';

  static UpdateNewCustomEvent? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateNewCustomEvent(event: json['event']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'event': this.event, '@type': CONSTRUCTOR};
}
