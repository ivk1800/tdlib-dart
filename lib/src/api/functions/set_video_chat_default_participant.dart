import '../tdapi.dart';

/// Changes default participant identifier, on whose behalf a video chat in
/// the chat will be joined
/// Returns [Ok]
class SetVideoChatDefaultParticipant extends TdFunction {
  SetVideoChatDefaultParticipant(
      {required this.chatId, required this.defaultParticipantId});

  /// [chatId] Chat identifier
  final int chatId;

  /// [defaultParticipantId] Default group call participant identifier to join
  /// the video chats
  final MessageSender defaultParticipantId;

  static const String CONSTRUCTOR = 'setVideoChatDefaultParticipant';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'default_participant_id': this.defaultParticipantId.toJson(),
        '@type': CONSTRUCTOR
      };
}
