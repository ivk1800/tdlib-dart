import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Describes an action suggested to the current user
abstract class SuggestedAction extends TdObject {
  const SuggestedAction();

  static const String CONSTRUCTOR = 'suggestedAction';

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

    switch (json["@type"]) {
      case SuggestedActionEnableArchiveAndMuteNewChats.CONSTRUCTOR:
        return SuggestedActionEnableArchiveAndMuteNewChats.fromJson(json);
      case SuggestedActionCheckPassword.CONSTRUCTOR:
        return SuggestedActionCheckPassword.fromJson(json);
      case SuggestedActionCheckPhoneNumber.CONSTRUCTOR:
        return SuggestedActionCheckPhoneNumber.fromJson(json);
      case SuggestedActionViewChecksHint.CONSTRUCTOR:
        return SuggestedActionViewChecksHint.fromJson(json);
      case SuggestedActionConvertToBroadcastGroup.CONSTRUCTOR:
        return SuggestedActionConvertToBroadcastGroup.fromJson(json);
      case SuggestedActionSetPassword.CONSTRUCTOR:
        return SuggestedActionSetPassword.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
