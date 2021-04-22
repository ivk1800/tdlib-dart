import '../tdapi.dart';

/// The chat permissions was changed
class ChatEventPermissionsChanged extends ChatEventAction {
  ChatEventPermissionsChanged(
      {required this.oldPermissions, required this.newPermissions});

  /// [oldPermissions] Previous chat permissions
  final ChatPermissions oldPermissions;

  /// [newPermissions] New chat permissions
  final ChatPermissions newPermissions;

  static const String CONSTRUCTOR = 'chatEventPermissionsChanged';

  static ChatEventPermissionsChanged? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventPermissionsChanged(
        oldPermissions: ChatPermissions.fromJson(json['old_permissions'])!,
        newPermissions: ChatPermissions.fromJson(json['new_permissions'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'old_permissions': this.oldPermissions.toJson(),
        'new_permissions': this.newPermissions.toJson(),
        '@type': CONSTRUCTOR
      };
}
