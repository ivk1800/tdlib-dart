import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns information about the current temporary password
/// Returns [TemporaryPasswordState]
@immutable
class GetTemporaryPasswordState extends TdFunction {
  const GetTemporaryPasswordState();

  static const String constructor = 'getTemporaryPasswordState';

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
