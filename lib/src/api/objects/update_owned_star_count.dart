import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The number of Telegram Stars owned by the current user has changed
@immutable
class UpdateOwnedStarCount extends Update {
  const UpdateOwnedStarCount({
    required this.starCount,
  });

  /// [starCount] The new number of Telegram Stars owned
  final int starCount;

  static const String constructor = 'updateOwnedStarCount';

  static UpdateOwnedStarCount? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateOwnedStarCount(
      starCount: json['star_count'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'star_count': starCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
