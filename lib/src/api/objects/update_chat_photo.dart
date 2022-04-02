import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A chat photo was changed
class UpdateChatPhoto extends Update {
  UpdateChatPhoto({required this.chatId, this.photo});

  /// [chatId] Chat identifier
  final int chatId;

  /// [photo] The new chat photo; may be null
  final ChatPhotoInfo? photo;

  static const String CONSTRUCTOR = 'updateChatPhoto';

  static UpdateChatPhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatPhoto(
        chatId: json['chat_id'], photo: ChatPhotoInfo.fromJson(json['photo']));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'photo': this.photo?.toJson(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
