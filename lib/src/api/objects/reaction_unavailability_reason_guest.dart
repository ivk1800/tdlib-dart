import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user isn't a member of the supergroup and can't send messages and
/// reactions there without joining
@immutable
class ReactionUnavailabilityReasonGuest extends ReactionUnavailabilityReason {
  const ReactionUnavailabilityReasonGuest();

  static const String constructor = 'reactionUnavailabilityReasonGuest';

  static ReactionUnavailabilityReasonGuest? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ReactionUnavailabilityReasonGuest();
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
