import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about a chat administrator
@immutable
class ChatAdministrator extends TdObject {
  const ChatAdministrator({
    required this.userId,
    required this.customTitle,
    required this.isOwner,
  });

  /// [userId] User identifier of the administrator
  final int userId;

  /// [customTitle] Custom title of the administrator
  final String customTitle;

  /// [isOwner] True, if the user is the owner of the chat
  final bool isOwner;

  static const String constructor = 'chatAdministrator';

  static ChatAdministrator? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatAdministrator(
      userId: json['user_id'],
      customTitle: json['custom_title'],
      isOwner: json['is_owner'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'custom_title': customTitle,
        'is_owner': isOwner,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
