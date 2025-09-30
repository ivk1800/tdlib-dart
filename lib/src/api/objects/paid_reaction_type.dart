import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes type of paid message reaction
@immutable
abstract class PaidReactionType extends TdObject {
  const PaidReactionType();

  static const String constructor = 'paidReactionType';

  /// Inherited by:
  /// [PaidReactionTypeAnonymous]
  /// [PaidReactionTypeChat]
  /// [PaidReactionTypeRegular]
  static PaidReactionType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case PaidReactionTypeAnonymous.constructor:
        return PaidReactionTypeAnonymous.fromJson(json);
      case PaidReactionTypeChat.constructor:
        return PaidReactionTypeChat.fromJson(json);
      case PaidReactionTypeRegular.constructor:
        return PaidReactionTypeRegular.fromJson(json);
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
