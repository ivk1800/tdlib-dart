import '../tdapi.dart';

/// The mute_new_participants setting of a voice chat was toggled
class ChatEventVoiceChatMuteNewParticipantsToggled extends ChatEventAction {
  ChatEventVoiceChatMuteNewParticipantsToggled(
      {required this.muteNewParticipants});

  /// [muteNewParticipants] New value of the mute_new_participants setting
  final bool muteNewParticipants;

  static const String CONSTRUCTOR =
      'chatEventVoiceChatMuteNewParticipantsToggled';

  static ChatEventVoiceChatMuteNewParticipantsToggled? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventVoiceChatMuteNewParticipantsToggled(
        muteNewParticipants: json['mute_new_participants']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'mute_new_participants': this.muteNewParticipants, '@type': CONSTRUCTOR};
}
