import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Deletes saved credentials for all payment provider bots
/// Returns [Ok]
class DeleteSavedCredentials extends TdFunction {
  DeleteSavedCredentials();

  static const String CONSTRUCTOR = 'deleteSavedCredentials';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
