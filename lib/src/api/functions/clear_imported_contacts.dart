import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Clears all imported contacts, contact list remains unchanged
/// Returns [Ok]
@immutable
class ClearImportedContacts extends TdFunction {
  const ClearImportedContacts();

  static const String constructor = 'clearImportedContacts';

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
