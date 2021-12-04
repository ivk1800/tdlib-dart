import '../tdapi.dart';

/// A basic group (a chat with 0-200 other users)
class ChatTypeBasicGroup extends ChatType {
  ChatTypeBasicGroup({required this.basicGroupId});

  /// [basicGroupId] Basic group identifier
  final int basicGroupId;

  static const String CONSTRUCTOR = 'chatTypeBasicGroup';

  static ChatTypeBasicGroup? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatTypeBasicGroup(basicGroupId: json['basic_group_id']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'basic_group_id': this.basicGroupId, '@type': CONSTRUCTOR};
}
