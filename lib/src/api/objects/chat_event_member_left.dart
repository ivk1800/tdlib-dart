import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A member left the chat
@immutable
class ChatEventMemberLeft extends ChatEventAction {
  const ChatEventMemberLeft();

  static const String constructor = 'chatEventMemberLeft';

  static ChatEventMemberLeft? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatEventMemberLeft();
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
