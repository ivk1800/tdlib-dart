import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Checks whether the specified bot can send messages to the user. Returns a
/// 404 error if can't and the access can be granted by call to
/// allowBotToSendMessages
/// Returns [Ok]
@immutable
class CanBotSendMessages extends TdFunction {
  const CanBotSendMessages({
    required this.botUserId,
  });

  /// [botUserId] Identifier of the target bot
  final int botUserId;

  static const String constructor = 'canBotSendMessages';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'bot_user_id': botUserId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
