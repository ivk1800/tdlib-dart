import '../tdapi.dart';

/// Clears all imported contacts, contact list remains unchanged
/// Returns [Ok]
class ClearImportedContacts extends TdFunction {
  ClearImportedContacts();

  static const String CONSTRUCTOR = 'clearImportedContacts';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
