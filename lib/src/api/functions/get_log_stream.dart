import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns information about currently used log stream for internal logging
/// of TDLib. Can be called synchronously
/// Returns [LogStream]
@immutable
class GetLogStream extends TdFunction {
  const GetLogStream();

  static const String constructor = 'getLogStream';

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
