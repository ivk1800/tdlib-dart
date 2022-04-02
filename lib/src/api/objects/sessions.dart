import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Contains a list of sessions
class Sessions extends TdObject {
  Sessions({required this.sessions, required this.inactiveSessionTtlDays});

  /// [sessions] List of sessions
  final List<Session> sessions;

  /// [inactiveSessionTtlDays] Number of days of inactivity before sessions will
  /// automatically be terminated; 1-366 days
  final int inactiveSessionTtlDays;

  static const String CONSTRUCTOR = 'sessions';

  static Sessions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Sessions(
        sessions: List<Session>.from((json['sessions'] ?? [])
            .map((item) => Session.fromJson(item))
            .toList()),
        inactiveSessionTtlDays: json['inactive_session_ttl_days']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'sessions': sessions.map((item) => item.toJson()).toList(),
        'inactive_session_ttl_days': this.inactiveSessionTtlDays,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
