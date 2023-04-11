import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A video chat was ended
@immutable
class ChatEventVideoChatEnded extends ChatEventAction {
  const ChatEventVideoChatEnded({
    required this.groupCallId,
  });

  /// [groupCallId] Identifier of the video chat. The video chat can be received
  /// through the method getGroupCall
  final int groupCallId;

  static const String constructor = 'chatEventVideoChatEnded';

  static ChatEventVideoChatEnded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventVideoChatEnded(
      groupCallId: json['group_call_id'] as int,
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
