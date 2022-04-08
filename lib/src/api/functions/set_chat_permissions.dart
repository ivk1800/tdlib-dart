import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes the chat members permissions. Supported only for basic groups and
/// supergroups. Requires can_restrict_members administrator right
/// Returns [Ok]
@immutable
class SetChatPermissions extends TdFunction {
  const SetChatPermissions({
    required this.chatId,
    required this.permissions,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [permissions] New non-administrator members permissions in the chat
  final ChatPermissions permissions;

  static const String constructor = 'setChatPermissions';

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
