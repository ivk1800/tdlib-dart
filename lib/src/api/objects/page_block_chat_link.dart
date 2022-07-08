import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A link to a chat
@immutable
class PageBlockChatLink extends PageBlock {
  const PageBlockChatLink({
    required this.title,
    this.photo,
    required this.username,
  });

  /// [title] Chat title
  final String title;

  /// [photo] Chat photo; may be null
  final ChatPhotoInfo? photo;

  /// [username] Chat username by which all other information about the chat can
  /// be resolved
  final String username;

  static const String constructor = 'pageBlockChatLink';

  static PageBlockChatLink? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockChatLink(
      title: json['title'],
      photo: ChatPhotoInfo.fromJson(json['photo']),
      username: json['username'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'title': title,
        'photo': photo?.toJson(),
        'username': username,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
