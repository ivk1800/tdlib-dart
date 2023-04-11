import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A chat photo was changed
@immutable
class UpdateChatPhoto extends Update {
  const UpdateChatPhoto({
    required this.chatId,
    this.photo,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [photo] The new chat photo; may be null
  final ChatPhotoInfo? photo;

  static const String constructor = 'updateChatPhoto';

  static UpdateChatPhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatPhoto(
      chatId: json['chat_id'] as int,
      photo: ChatPhotoInfo.fromJson(json['photo'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'photo': photo?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
