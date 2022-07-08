import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The chat available reactions were changed
@immutable
class ChatEventAvailableReactionsChanged extends ChatEventAction {
  const ChatEventAvailableReactionsChanged({
    required this.oldAvailableReactions,
    required this.newAvailableReactions,
  });

  /// [oldAvailableReactions] Previous chat available reactions
  final List<String> oldAvailableReactions;

  /// [newAvailableReactions] New chat available reactions
  final List<String> newAvailableReactions;

  static const String constructor = 'chatEventAvailableReactionsChanged';

  static ChatEventAvailableReactionsChanged? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventAvailableReactionsChanged(
      oldAvailableReactions: List<String>.from(
          (json['old_available_reactions'] ?? []).map((item) => item).toList()),
      newAvailableReactions: List<String>.from(
          (json['new_available_reactions'] ?? []).map((item) => item).toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'old_available_reactions':
            oldAvailableReactions.map((item) => item).toList(),
        'new_available_reactions':
            newAvailableReactions.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
