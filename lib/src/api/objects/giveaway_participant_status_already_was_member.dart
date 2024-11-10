import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user can't participate in the giveaway, because they have already been
/// member of the chat
@immutable
class GiveawayParticipantStatusAlreadyWasMember
    extends GiveawayParticipantStatus {
  const GiveawayParticipantStatusAlreadyWasMember({
    required this.joinedChatDate,
  });

  /// [joinedChatDate] Point in time (Unix timestamp) when the user joined the
  /// chat
  final int joinedChatDate;

  static const String constructor = 'giveawayParticipantStatusAlreadyWasMember';

  static GiveawayParticipantStatusAlreadyWasMember? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GiveawayParticipantStatusAlreadyWasMember(
      joinedChatDate: json['joined_chat_date'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'joined_chat_date': joinedChatDate,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
