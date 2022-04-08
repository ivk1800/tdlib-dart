import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A video chat participant was muted or unmuted
@immutable
class ChatEventVideoChatParticipantIsMutedToggled extends ChatEventAction {
  const ChatEventVideoChatParticipantIsMutedToggled({
    required this.participantId,
    required this.isMuted,
  });

  /// [participantId] Identifier of the affected group call participant
  final MessageSender participantId;

  /// [isMuted] New value of is_muted
  final bool isMuted;

  static const String constructor =
      'chatEventVideoChatParticipantIsMutedToggled';

  static ChatEventVideoChatParticipantIsMutedToggled? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventVideoChatParticipantIsMutedToggled(
      participantId: MessageSender.fromJson(json['participant_id'])!,
      isMuted: json['is_muted'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'participant_id': participantId.toJson(),
        'is_muted': isMuted,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
