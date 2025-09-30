import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A paid reaction on behalf of the current user
@immutable
class PaidReactionTypeRegular extends PaidReactionType {
  const PaidReactionTypeRegular();

  static const String constructor = 'paidReactionTypeRegular';

  static PaidReactionTypeRegular? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PaidReactionTypeRegular();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
