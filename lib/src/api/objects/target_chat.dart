import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes the target chat to be opened
@immutable
abstract class TargetChat extends TdObject {
  const TargetChat();

  static const String constructor = 'targetChat';

  /// Inherited by:
  /// [TargetChatChosen]
  /// [TargetChatCurrent]
  /// [TargetChatInternalLink]
  static TargetChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case TargetChatChosen.constructor:
        return TargetChatChosen.fromJson(json);
      case TargetChatCurrent.constructor:
        return TargetChatCurrent.fromJson(json);
      case TargetChatInternalLink.constructor:
        return TargetChatInternalLink.fromJson(json);
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
