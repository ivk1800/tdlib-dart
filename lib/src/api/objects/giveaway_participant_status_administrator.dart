import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user can't participate in the giveaway, because they are an
/// administrator in one of the chats that created the giveaway
@immutable
class GiveawayParticipantStatusAdministrator extends GiveawayParticipantStatus {
  const GiveawayParticipantStatusAdministrator({
    required this.chatId,
  });

  /// [chatId] Identifier of the chat administered by the user
  final int chatId;

  static const String constructor = 'giveawayParticipantStatusAdministrator';

  static GiveawayParticipantStatusAdministrator? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GiveawayParticipantStatusAdministrator(
      chatId: json['chat_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
