import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns the current state of 2-step verification
/// Returns [PasswordState]
@immutable
class GetPasswordState extends TdFunction {
  const GetPasswordState();

  static const String constructor = 'getPasswordState';

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
