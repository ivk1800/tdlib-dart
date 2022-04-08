import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A message containing a user contact
@immutable
class InputMessageContact extends InputMessageContent {
  const InputMessageContact({
    required this.contact,
  });

  /// [contact] Contact to send
  final Contact contact;

  static const String constructor = 'inputMessageContact';

  static InputMessageContact? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageContact(
      contact: Contact.fromJson(json['contact'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'contact': contact.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
