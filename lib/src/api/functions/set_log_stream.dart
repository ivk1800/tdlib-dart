import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Sets new log stream for internal logging of TDLib. Can be called
/// synchronously
/// Returns [Ok]
@immutable
class SetLogStream extends TdFunction {
  const SetLogStream({
    required this.logStream,
  });

  /// [logStream] New log stream
  final LogStream logStream;

  static const String constructor = 'setLogStream';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'log_stream': logStream.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
