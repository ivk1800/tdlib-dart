import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of reactions added to a message
@immutable
class MessageReactions extends TdObject {
  const MessageReactions({
    required this.reactions,
    required this.areTags,
    required this.paidReactors,
    required this.canGetAddedReactions,
  });

  /// [reactions] List of added reactions
  final List<MessageReaction> reactions;

  /// [areTags] True, if the reactions are tags and Telegram Premium users can
  /// filter messages by them
  final bool areTags;

  /// [paidReactors] Information about top users that added the paid reaction
  final List<PaidReactor> paidReactors;

  /// [canGetAddedReactions] True, if the list of added reactions is available
  /// using getMessageAddedReactions
  final bool canGetAddedReactions;

  static const String constructor = 'messageReactions';

  static MessageReactions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageReactions(
      reactions: List<MessageReaction>.from(
          ((json['reactions'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => MessageReaction.fromJson(item))
              .toList()),
      areTags: json['are_tags'] as bool,
      paidReactors: List<PaidReactor>.from(
          ((json['paid_reactors'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => PaidReactor.fromJson(item))
              .toList()),
      canGetAddedReactions: json['can_get_added_reactions'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'reactions': reactions.map((item) => item.toJson()).toList(),
        'are_tags': areTags,
        'paid_reactors': paidReactors.map((item) => item.toJson()).toList(),
        'can_get_added_reactions': canGetAddedReactions,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
