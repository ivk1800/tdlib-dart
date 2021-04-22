import '../tdapi.dart';

/// The log is written nowhere
class LogStreamEmpty extends LogStream {
  const LogStreamEmpty();

  static const String CONSTRUCTOR = 'logStreamEmpty';

  static LogStreamEmpty? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const LogStreamEmpty();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
