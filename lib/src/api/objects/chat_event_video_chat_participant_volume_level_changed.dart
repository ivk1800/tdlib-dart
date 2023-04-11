import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A video chat participant volume level was changed
@immutable
class ChatEventVideoChatParticipantVolumeLevelChanged extends ChatEventAction {
  const ChatEventVideoChatParticipantVolumeLevelChanged({
    required this.participantId,
    required this.volumeLevel,
  });

  /// [participantId] Identifier of the affected group call participant
  final MessageSender participantId;

  /// [volumeLevel] New value of volume_level; 1-20000 in hundreds of percents
  final int volumeLevel;

  static const String constructor =
      'chatEventVideoChatParticipantVolumeLevelChanged';

  static ChatEventVideoChatParticipantVolumeLevelChanged? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventVideoChatParticipantVolumeLevelChanged(
      participantId: MessageSender.fromJson(
          json['participant_id'] as Map<String, dynamic>?)!,
      volumeLevel: json['volume_level'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'participant_id': participantId.toJson(),
        'volume_level': volumeLevel,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
