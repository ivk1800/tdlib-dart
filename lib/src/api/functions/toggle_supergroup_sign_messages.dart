import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Toggles whether sender signature is added to sent messages in a channel;
/// requires can_change_info administrator right
/// Returns [Ok]
@immutable
class ToggleSupergroupSignMessages extends TdFunction {
  const ToggleSupergroupSignMessages({
    required this.supergroupId,
    required this.signMessages,
  });

  /// [supergroupId] Identifier of the channel
  final int supergroupId;

  /// [signMessages] New value of sign_messages
  final bool signMessages;

  static const String constructor = 'toggleSupergroupSignMessages';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'supergroup_id': supergroupId,
        'sign_messages': signMessages,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
