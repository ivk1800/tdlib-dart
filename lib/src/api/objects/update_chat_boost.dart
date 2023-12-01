import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A chat boost has changed; for bots only
@immutable
class UpdateChatBoost extends Update {
  const UpdateChatBoost({
    required this.chatId,
    required this.boost,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [boost] New information about the boost
  final ChatBoost boost;

  static const String constructor = 'updateChatBoost';

  static UpdateChatBoost? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatBoost(
      chatId: json['chat_id'] as int,
      boost: ChatBoost.fromJson(json['boost'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'boost': boost.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
