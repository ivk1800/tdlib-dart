import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A chat was blocked or unblocked
@immutable
class UpdateChatBlockList extends Update {
  const UpdateChatBlockList({
    required this.chatId,
    this.blockList,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [blockList] Block list to which the chat is added; may be null if none
  final BlockList? blockList;

  static const String constructor = 'updateChatBlockList';

  static UpdateChatBlockList? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatBlockList(
      chatId: json['chat_id'] as int,
      blockList:
          BlockList.fromJson(json['block_list'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'block_list': blockList?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
