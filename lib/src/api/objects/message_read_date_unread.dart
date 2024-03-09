import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The message is unread yet
@immutable
class MessageReadDateUnread extends MessageReadDate {
  const MessageReadDateUnread();

  static const String constructor = 'messageReadDateUnread';

  static MessageReadDateUnread? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MessageReadDateUnread();
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
