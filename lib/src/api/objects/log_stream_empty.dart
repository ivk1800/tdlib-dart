import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

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

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
