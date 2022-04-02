import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Changes imported contacts using the list of contacts saved on the device.
/// Imports newly added contacts and, if at least the file database is
/// enabled, deletes recently deleted contacts.. Query result depends on the
/// result of the previous query, so only one query is possible at the same
/// time
/// Returns [ImportedContacts]
class ChangeImportedContacts extends TdFunction {
  ChangeImportedContacts({required this.contacts});

  /// [contacts] The new list of contacts, contact's vCard are ignored and are
  /// not imported
  final List<Contact> contacts;

  static const String CONSTRUCTOR = 'changeImportedContacts';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'contacts': contacts.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
