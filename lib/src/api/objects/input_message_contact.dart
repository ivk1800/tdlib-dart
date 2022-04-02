import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A message containing a user contact
class InputMessageContact extends InputMessageContent {
  InputMessageContact({required this.contact});

  /// [contact] Contact to send
  final Contact contact;

  static const String CONSTRUCTOR = 'inputMessageContact';

  static InputMessageContact? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageContact(contact: Contact.fromJson(json['contact'])!);
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
