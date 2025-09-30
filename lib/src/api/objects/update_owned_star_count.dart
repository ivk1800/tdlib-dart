import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The number of Telegram Stars owned by the current user has changed
@immutable
class UpdateOwnedStarCount extends Update {
  const UpdateOwnedStarCount({required this.starAmount});

  /// [starAmount] The new amount of owned Telegram Stars
  final StarAmount starAmount;

  static const String constructor = 'updateOwnedStarCount';

  static UpdateOwnedStarCount? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateOwnedStarCount(
      starAmount: StarAmount.fromJson(
        json['star_amount'] as Map<String, dynamic>?,
      )!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'star_amount': starAmount.toJson(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
