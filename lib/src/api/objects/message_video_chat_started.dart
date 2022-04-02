import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A newly created video chat
class MessageVideoChatStarted extends MessageContent {
  MessageVideoChatStarted({required this.groupCallId});

  /// [groupCallId] Identifier of the video chat. The video chat can be received
  /// through the method getGroupCall
  final int groupCallId;

  static const String CONSTRUCTOR = 'messageVideoChatStarted';

  static MessageVideoChatStarted? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageVideoChatStarted(groupCallId: json['group_call_id']);
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
