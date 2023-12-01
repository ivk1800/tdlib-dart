import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a reason why a bot was allowed to write messages to the current
/// user
@immutable
abstract class BotWriteAccessAllowReason extends TdObject {
  const BotWriteAccessAllowReason();

  static const String constructor = 'botWriteAccessAllowReason';

  /// Inherited by:
  /// [BotWriteAccessAllowReasonAcceptedRequest]
  /// [BotWriteAccessAllowReasonAddedToAttachmentMenu]
  /// [BotWriteAccessAllowReasonConnectedWebsite]
  /// [BotWriteAccessAllowReasonLaunchedWebApp]
  static BotWriteAccessAllowReason? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case BotWriteAccessAllowReasonAcceptedRequest.constructor:
        return BotWriteAccessAllowReasonAcceptedRequest.fromJson(json);
      case BotWriteAccessAllowReasonAddedToAttachmentMenu.constructor:
        return BotWriteAccessAllowReasonAddedToAttachmentMenu.fromJson(json);
      case BotWriteAccessAllowReasonConnectedWebsite.constructor:
        return BotWriteAccessAllowReasonConnectedWebsite.fromJson(json);
      case BotWriteAccessAllowReasonLaunchedWebApp.constructor:
        return BotWriteAccessAllowReasonLaunchedWebApp.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
