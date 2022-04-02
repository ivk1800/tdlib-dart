import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Toggles whether sender signature is added to sent messages in a channel;
/// requires can_change_info administrator right
/// Returns [Ok]
class ToggleSupergroupSignMessages extends TdFunction {
  ToggleSupergroupSignMessages(
      {required this.supergroupId, required this.signMessages});

  /// [supergroupId] Identifier of the channel
  final int supergroupId;

  /// [signMessages] New value of sign_messages
  final bool signMessages;

  static const String CONSTRUCTOR = 'toggleSupergroupSignMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'supergroup_id': this.supergroupId,
        'sign_messages': this.signMessages,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
