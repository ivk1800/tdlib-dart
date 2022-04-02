import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Contains a TDLib internal log verbosity level
class LogVerbosityLevel extends TdObject {
  LogVerbosityLevel({required this.verbosityLevel});

  /// [verbosityLevel] Log verbosity level
  final int verbosityLevel;

  static const String CONSTRUCTOR = 'logVerbosityLevel';

  static LogVerbosityLevel? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LogVerbosityLevel(verbosityLevel: json['verbosity_level']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'verbosity_level': this.verbosityLevel, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
