import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of sessions
@immutable
class Sessions extends TdObject {
  const Sessions({
    required this.sessions,
    required this.inactiveSessionTtlDays,
  });

  /// [sessions] List of sessions
  final List<Session> sessions;

  /// [inactiveSessionTtlDays] Number of days of inactivity before sessions will
  /// automatically be terminated; 1-366 days
  final int inactiveSessionTtlDays;

  static const String constructor = 'sessions';

  static Sessions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Sessions(
      sessions: List<Session>.from((json['sessions'] ?? [])
          .map((item) => Session.fromJson(item))
          .toList()),
      inactiveSessionTtlDays: json['inactive_session_ttl_days'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sessions': sessions.map((item) => item.toJson()).toList(),
        'inactive_session_ttl_days': inactiveSessionTtlDays,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
