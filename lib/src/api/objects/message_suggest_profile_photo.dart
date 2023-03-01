import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A profile photo was suggested to a user in a private chat
@immutable
class MessageSuggestProfilePhoto extends MessageContent {
  const MessageSuggestProfilePhoto({
    required this.photo,
  });

  /// [photo] The suggested chat photo. Use the method setProfilePhoto with
  /// inputChatPhotoPrevious to apply the photo
  final ChatPhoto photo;

  static const String constructor = 'messageSuggestProfilePhoto';

  static MessageSuggestProfilePhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageSuggestProfilePhoto(
      photo: ChatPhoto.fromJson(json['photo'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'photo': photo.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
