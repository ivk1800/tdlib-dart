import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Clears all imported contacts, contact list remains unchanged
/// Returns [Ok]
class ClearImportedContacts extends TdFunction {
  ClearImportedContacts();

  static const String CONSTRUCTOR = 'clearImportedContacts';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
