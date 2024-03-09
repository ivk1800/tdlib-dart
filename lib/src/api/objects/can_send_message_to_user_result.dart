import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes result of canSendMessageToUser
@immutable
abstract class CanSendMessageToUserResult extends TdObject {
  const CanSendMessageToUserResult();

  static const String constructor = 'canSendMessageToUserResult';

  /// Inherited by:
  /// [CanSendMessageToUserResultOk]
  /// [CanSendMessageToUserResultUserIsDeleted]
  /// [CanSendMessageToUserResultUserRestrictsNewChats]
  static CanSendMessageToUserResult? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case CanSendMessageToUserResultOk.constructor:
        return CanSendMessageToUserResultOk.fromJson(json);
      case CanSendMessageToUserResultUserIsDeleted.constructor:
        return CanSendMessageToUserResultUserIsDeleted.fromJson(json);
      case CanSendMessageToUserResultUserRestrictsNewChats.constructor:
        return CanSendMessageToUserResultUserRestrictsNewChats.fromJson(json);
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
