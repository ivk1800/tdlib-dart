import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes why the current user can't add reactions to the message, despite
/// some other users can
@immutable
abstract class ReactionUnavailabilityReason extends TdObject {
  const ReactionUnavailabilityReason();

  static const String constructor = 'reactionUnavailabilityReason';

  /// Inherited by:
  /// [ReactionUnavailabilityReasonAnonymousAdministrator]
  /// [ReactionUnavailabilityReasonGuest]
  static ReactionUnavailabilityReason? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ReactionUnavailabilityReasonAnonymousAdministrator.constructor:
        return ReactionUnavailabilityReasonAnonymousAdministrator.fromJson(
            json);
      case ReactionUnavailabilityReasonGuest.constructor:
        return ReactionUnavailabilityReasonGuest.fromJson(json);
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
