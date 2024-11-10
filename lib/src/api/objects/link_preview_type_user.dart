import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is a link to a user
@immutable
class LinkPreviewTypeUser extends LinkPreviewType {
  const LinkPreviewTypeUser({
    this.photo,
    required this.isBot,
  });

  /// [photo] Photo of the user; may be null if none
  final ChatPhoto? photo;

  /// [isBot] True, if the user is a bot
  final bool isBot;

  static const String constructor = 'linkPreviewTypeUser';

  static LinkPreviewTypeUser? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LinkPreviewTypeUser(
      photo: ChatPhoto.fromJson(json['photo'] as Map<String, dynamic>?),
      isBot: json['is_bot'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'photo': photo?.toJson(),
        'is_bot': isBot,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
