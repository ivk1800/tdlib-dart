import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The log is written to stderr or an OS specific log
@immutable
class LogStreamDefault extends LogStream {
  const LogStreamDefault();

  static const String constructor = 'logStreamDefault';

  static LogStreamDefault? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const LogStreamDefault();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
