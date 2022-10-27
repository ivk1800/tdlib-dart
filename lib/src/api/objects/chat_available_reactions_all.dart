import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// All reactions are available in the chat
@immutable
class ChatAvailableReactionsAll extends ChatAvailableReactions {
  const ChatAvailableReactionsAll();

  static const String constructor = 'chatAvailableReactionsAll';

  static ChatAvailableReactionsAll? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatAvailableReactionsAll();
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
