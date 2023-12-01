import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user accepted bot's request to send messages with
/// allowBotToSendMessages
@immutable
class BotWriteAccessAllowReasonAcceptedRequest
    extends BotWriteAccessAllowReason {
  const BotWriteAccessAllowReasonAcceptedRequest();

  static const String constructor = 'botWriteAccessAllowReasonAcceptedRequest';

  static BotWriteAccessAllowReasonAcceptedRequest? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const BotWriteAccessAllowReasonAcceptedRequest();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
