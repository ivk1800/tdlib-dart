import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The chat is a private or secret chat and the other user can be added to
/// the contact list using the method addContact
@immutable
class ChatActionBarAddContact extends ChatActionBar {
  const ChatActionBarAddContact();

  static const String constructor = 'chatActionBarAddContact';

  static ChatActionBarAddContact? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatActionBarAddContact();
  }

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
