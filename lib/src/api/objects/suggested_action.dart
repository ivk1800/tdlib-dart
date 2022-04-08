import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes an action suggested to the current user
@immutable
abstract class SuggestedAction extends TdObject {
  const SuggestedAction();

  static const String constructor = 'suggestedAction';

  /// Inherited by:
  /// [SuggestedActionEnableArchiveAndMuteNewChats]
  /// [SuggestedActionCheckPassword]
  /// [SuggestedActionCheckPhoneNumber]
  /// [SuggestedActionViewChecksHint]
  /// [SuggestedActionConvertToBroadcastGroup]
  /// [SuggestedActionSetPassword]
  static SuggestedAction? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case SuggestedActionEnableArchiveAndMuteNewChats.constructor:
        return SuggestedActionEnableArchiveAndMuteNewChats.fromJson(json);
      case SuggestedActionCheckPassword.constructor:
        return SuggestedActionCheckPassword.fromJson(json);
      case SuggestedActionCheckPhoneNumber.constructor:
        return SuggestedActionCheckPhoneNumber.fromJson(json);
      case SuggestedActionViewChecksHint.constructor:
        return SuggestedActionViewChecksHint.fromJson(json);
      case SuggestedActionConvertToBroadcastGroup.constructor:
        return SuggestedActionConvertToBroadcastGroup.fromJson(json);
      case SuggestedActionSetPassword.constructor:
        return SuggestedActionSetPassword.fromJson(json);
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
