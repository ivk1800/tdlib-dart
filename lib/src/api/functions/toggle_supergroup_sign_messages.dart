import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Toggles whether sender signature or link to the account is added to sent
/// messages in a channel; requires can_change_info member right
/// Returns [Ok]
@immutable
class ToggleSupergroupSignMessages extends TdFunction {
  const ToggleSupergroupSignMessages({
    required this.supergroupId,
    required this.signMessages,
    required this.showMessageSender,
  });

  /// [supergroupId] Identifier of the channel
  final int supergroupId;

  /// [signMessages] New value of sign_messages
  final bool signMessages;

  /// [showMessageSender] New value of show_message_sender
  final bool showMessageSender;

  static const String constructor = 'toggleSupergroupSignMessages';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'supergroup_id': supergroupId,
        'sign_messages': signMessages,
        'show_message_sender': showMessageSender,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
