import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Adds new contacts or edits existing contacts by their phone numbers;
/// contacts' user identifiers are ignored
/// Returns [ImportedContacts]
@immutable
class ImportContacts extends TdFunction {
  const ImportContacts({
    required this.contacts,
  });

  /// [contacts] The list of contacts to import or edit; contacts' vCard are
  /// ignored and are not imported
  final List<Contact> contacts;

  static const String constructor = 'importContacts';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'contacts': contacts.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
