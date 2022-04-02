import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A video chat was ended
class ChatEventVideoChatEnded extends ChatEventAction {
  ChatEventVideoChatEnded({required this.groupCallId});

  /// [groupCallId] Identifier of the video chat. The video chat can be received
  /// through the method getGroupCall
  final int groupCallId;

  static const String CONSTRUCTOR = 'chatEventVideoChatEnded';

  static ChatEventVideoChatEnded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventVideoChatEnded(groupCallId: json['group_call_id']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'group_call_id': this.groupCallId, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
