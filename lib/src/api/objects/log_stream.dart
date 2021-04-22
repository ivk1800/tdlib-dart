import '../tdapi.dart';

/// Describes a stream to which TDLib internal log is written
abstract class LogStream extends TdObject {
  const LogStream();

  static const String CONSTRUCTOR = 'logStream';

  /// Inherited by:
  /// [LogStreamDefault]
  /// [LogStreamFile]
  /// [LogStreamEmpty]
  static LogStream? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case LogStreamDefault.CONSTRUCTOR:
        return LogStreamDefault.fromJson(json);
      case LogStreamFile.CONSTRUCTOR:
        return LogStreamFile.fromJson(json);
      case LogStreamEmpty.CONSTRUCTOR:
        return LogStreamEmpty.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;
}
