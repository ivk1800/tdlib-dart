import '../tdapi.dart';

/// A link to a chat
class PageBlockChatLink extends PageBlock {
  PageBlockChatLink({required this.title, this.photo, required this.username});

  /// [title] Chat title
  final String title;

  /// [photo] Chat photo; may be null
  final ChatPhotoInfo? photo;

  /// [username] Chat username, by which all other information about the chat
  /// can be resolved
  final String username;

  static const String CONSTRUCTOR = 'pageBlockChatLink';

  static PageBlockChatLink? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockChatLink(
        title: json['title'],
        photo: ChatPhotoInfo.fromJson(json['photo']),
        username: json['username']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'title': this.title,
        'photo': this.photo?.toJson(),
        'username': this.username,
        '@type': CONSTRUCTOR
      };
}
