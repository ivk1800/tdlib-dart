import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Adds new contacts or edits existing contacts by their phone numbers;
/// contacts' user identifiers are ignored
/// Returns [ImportedContacts]
class ImportContacts extends TdFunction {
  ImportContacts({required this.contacts});

  /// [contacts] The list of contacts to import or edit; contacts' vCard are
  /// ignored and are not imported
  final List<Contact> contacts;

  static const String CONSTRUCTOR = 'importContacts';

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
