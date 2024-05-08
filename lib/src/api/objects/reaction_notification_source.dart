import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes sources of reactions for which notifications will be shown
@immutable
abstract class ReactionNotificationSource extends TdObject {
  const ReactionNotificationSource();

  static const String constructor = 'reactionNotificationSource';

  /// Inherited by:
  /// [ReactionNotificationSourceAll]
  /// [ReactionNotificationSourceContacts]
  /// [ReactionNotificationSourceNone]
  static ReactionNotificationSource? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ReactionNotificationSourceAll.constructor:
        return ReactionNotificationSourceAll.fromJson(json);
      case ReactionNotificationSourceContacts.constructor:
        return ReactionNotificationSourceContacts.fromJson(json);
      case ReactionNotificationSourceNone.constructor:
        return ReactionNotificationSourceNone.fromJson(json);
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
