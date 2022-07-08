import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a reaction applied to a message
@immutable
class AddedReaction extends TdObject {
  const AddedReaction({
    required this.reaction,
    required this.senderId,
  });

  /// [reaction] Text representation of the reaction
  final String reaction;

  /// [senderId] Identifier of the chat member, applied the reaction
  final MessageSender senderId;

  static const String constructor = 'addedReaction';

  static AddedReaction? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AddedReaction(
      reaction: json['reaction'],
      senderId: MessageSender.fromJson(json['sender_id'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'reaction': reaction,
        'sender_id': senderId.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
