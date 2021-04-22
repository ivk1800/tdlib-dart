import '../tdapi.dart';

/// Deletes saved credentials for all payment provider bots
/// Returns [Ok]
class DeleteSavedCredentials extends TdFunction {
  DeleteSavedCredentials();

  static const String CONSTRUCTOR = 'deleteSavedCredentials';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
