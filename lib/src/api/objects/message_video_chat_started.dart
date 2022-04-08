import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A newly created video chat
@immutable
class MessageVideoChatStarted extends MessageContent {
  const MessageVideoChatStarted({
    required this.groupCallId,
  });

  /// [groupCallId] Identifier of the video chat. The video chat can be received
  /// through the method getGroupCall
  final int groupCallId;

  static const String constructor = 'messageVideoChatStarted';

  static MessageVideoChatStarted? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageVideoChatStarted(
      groupCallId: json['group_call_id'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'group_call_id': groupCallId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
