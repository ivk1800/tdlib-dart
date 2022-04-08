import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The chat photo was changed
@immutable
class ChatEventPhotoChanged extends ChatEventAction {
  const ChatEventPhotoChanged({
    this.oldPhoto,
    this.newPhoto,
  });

  /// [oldPhoto] Previous chat photo value; may be null
  final ChatPhoto? oldPhoto;

  /// [newPhoto] New chat photo value; may be null
  final ChatPhoto? newPhoto;

  static const String constructor = 'chatEventPhotoChanged';

  static ChatEventPhotoChanged? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventPhotoChanged(
      oldPhoto: ChatPhoto.fromJson(json['old_photo']),
      newPhoto: ChatPhoto.fromJson(json['new_photo']),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'old_photo': oldPhoto?.toJson(),
        'new_photo': newPhoto?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
