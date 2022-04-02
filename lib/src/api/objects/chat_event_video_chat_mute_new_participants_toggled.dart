import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The mute_new_participants setting of a video chat was toggled
class ChatEventVideoChatMuteNewParticipantsToggled extends ChatEventAction {
  ChatEventVideoChatMuteNewParticipantsToggled(
      {required this.muteNewParticipants});

  /// [muteNewParticipants] New value of the mute_new_participants setting
  final bool muteNewParticipants;

  static const String CONSTRUCTOR =
      'chatEventVideoChatMuteNewParticipantsToggled';

  static ChatEventVideoChatMuteNewParticipantsToggled? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventVideoChatMuteNewParticipantsToggled(
        muteNewParticipants: json['mute_new_participants']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'mute_new_participants': this.muteNewParticipants, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
