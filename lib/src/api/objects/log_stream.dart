import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a stream to which TDLib internal log is written
@immutable
abstract class LogStream extends TdObject {
  const LogStream();

  static const String constructor = 'logStream';

  /// Inherited by:
  /// [LogStreamDefault]
  /// [LogStreamFile]
  /// [LogStreamEmpty]
  static LogStream? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case LogStreamDefault.constructor:
        return LogStreamDefault.fromJson(json);
      case LogStreamFile.constructor:
        return LogStreamFile.fromJson(json);
      case LogStreamEmpty.constructor:
        return LogStreamEmpty.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
