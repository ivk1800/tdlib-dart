import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes default participant identifier, on whose behalf a video chat in
/// the chat will be joined
/// Returns [Ok]
@immutable
class SetVideoChatDefaultParticipant extends TdFunction {
  const SetVideoChatDefaultParticipant({
    required this.chatId,
    required this.defaultParticipantId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [defaultParticipantId] Default group call participant identifier to join
  /// the video chats
  final MessageSender defaultParticipantId;

  static const String constructor = 'setVideoChatDefaultParticipant';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'default_participant_id': defaultParticipantId.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
