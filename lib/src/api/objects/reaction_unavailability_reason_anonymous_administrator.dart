import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user is an anonymous administrator in the supergroup, but isn't a
/// creator of it, so they can't vote on behalf of the supergroup
@immutable
class ReactionUnavailabilityReasonAnonymousAdministrator
    extends ReactionUnavailabilityReason {
  const ReactionUnavailabilityReasonAnonymousAdministrator();

  static const String constructor =
      'reactionUnavailabilityReasonAnonymousAdministrator';

  static ReactionUnavailabilityReasonAnonymousAdministrator? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ReactionUnavailabilityReasonAnonymousAdministrator();
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
