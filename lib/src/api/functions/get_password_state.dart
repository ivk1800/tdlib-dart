import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns the current state of 2-step verification
/// Returns [PasswordState]
class GetPasswordState extends TdFunction {
  GetPasswordState();

  static const String CONSTRUCTOR = 'getPasswordState';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
