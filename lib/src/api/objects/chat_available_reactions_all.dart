import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// All reactions are available in the chat
@immutable
class ChatAvailableReactionsAll extends ChatAvailableReactions {
  const ChatAvailableReactionsAll({
    required this.maxReactionCount,
  });

  /// [maxReactionCount] The maximum allowed number of reactions per message;
  /// 1-11
  final int maxReactionCount;

  static const String constructor = 'chatAvailableReactionsAll';

  static ChatAvailableReactionsAll? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatAvailableReactionsAll(
      maxReactionCount: json['max_reaction_count'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'max_reaction_count': maxReactionCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
