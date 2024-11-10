import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Toggles whether joining is mandatory to send messages to a discussion
/// supergroup; requires can_restrict_members administrator right
/// Returns [Ok]
@immutable
class ToggleSupergroupJoinToSendMessages extends TdFunction {
  const ToggleSupergroupJoinToSendMessages({
    required this.supergroupId,
    required this.joinToSendMessages,
  });

  /// [supergroupId] Identifier of the supergroup that isn't a broadcast group
  final int supergroupId;

  /// [joinToSendMessages] New value of join_to_send_messages
  final bool joinToSendMessages;

  static const String constructor = 'toggleSupergroupJoinToSendMessages';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'supergroup_id': supergroupId,
        'join_to_send_messages': joinToSendMessages,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
