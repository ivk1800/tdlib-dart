import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Sets new log stream for internal logging of TDLib. Can be called
/// synchronously
/// Returns [Ok]
class SetLogStream extends TdFunction {
  SetLogStream({required this.logStream});

  /// [logStream] New log stream
  final LogStream logStream;

  static const String CONSTRUCTOR = 'setLogStream';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'log_stream': this.logStream.toJson(), '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
