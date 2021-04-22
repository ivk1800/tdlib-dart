import '../tdapi.dart';

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
}
