import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A message with a user contact
class MessageContact extends MessageContent {
  MessageContact({required this.contact});

  /// [contact] The contact description
  final Contact contact;

  static const String CONSTRUCTOR = 'messageContact';

  static MessageContact? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageContact(contact: Contact.fromJson(json['contact'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'contact': this.contact.toJson(), '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
