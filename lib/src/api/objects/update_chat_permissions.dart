import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Chat permissions was changed
@immutable
class UpdateChatPermissions extends Update {
  const UpdateChatPermissions({
    required this.chatId,
    required this.permissions,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [permissions] The new chat permissions
  final ChatPermissions permissions;

  static const String constructor = 'updateChatPermissions';

  static UpdateChatPermissions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatPermissions(
      chatId: json['chat_id'] as int,
      permissions: ChatPermissions.fromJson(
          json['permissions'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'permissions': permissions.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
