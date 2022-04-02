import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns information about currently used log stream for internal logging
/// of TDLib. Can be called synchronously
/// Returns [LogStream]
class GetLogStream extends TdFunction {
  GetLogStream();

  static const String CONSTRUCTOR = 'getLogStream';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
