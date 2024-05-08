import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains basic information about a chat folder
@immutable
class ChatFolderInfo extends TdObject {
  const ChatFolderInfo({
    required this.id,
    required this.title,
    required this.icon,
    required this.colorId,
    required this.isShareable,
    required this.hasMyInviteLinks,
  });

  /// [id] Unique chat folder identifier
  final int id;

  /// [title] The title of the folder; 1-12 characters without line feeds
  final String title;

  /// [icon] The chosen or default icon for the chat folder
  final ChatFolderIcon icon;

  /// [colorId] The identifier of the chosen color for the chat folder icon;
  /// from -1 to 6. If -1, then color is disabled
  final int colorId;

  /// [isShareable] True, if at least one link has been created for the folder
  final bool isShareable;

  /// [hasMyInviteLinks] True, if the chat folder has invite links created by
  /// the current user
  final bool hasMyInviteLinks;

  static const String constructor = 'chatFolderInfo';

  static ChatFolderInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatFolderInfo(
      id: json['id'] as int,
      title: json['title'] as String,
      icon: ChatFolderIcon.fromJson(json['icon'] as Map<String, dynamic>?)!,
      colorId: json['color_id'] as int,
      isShareable: json['is_shareable'] as bool,
      hasMyInviteLinks: json['has_my_invite_links'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'title': title,
        'icon': icon.toJson(),
        'color_id': colorId,
        'is_shareable': isShareable,
        'has_my_invite_links': hasMyInviteLinks,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
