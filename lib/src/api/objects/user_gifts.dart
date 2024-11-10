import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a list of gifts received by a user
@immutable
class UserGifts extends TdObject {
  const UserGifts({
    required this.totalCount,
    required this.gifts,
    required this.nextOffset,
  });

  /// [totalCount] The total number of received gifts
  final int totalCount;

  /// [gifts] The list of gifts
  final List<UserGift> gifts;

  /// [nextOffset] The offset for the next request. If empty, then there are no
  /// more results
  final String nextOffset;

  static const String constructor = 'userGifts';

  static UserGifts? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UserGifts(
      totalCount: json['total_count'] as int,
      gifts: List<UserGift>.from(
          ((json['gifts'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => UserGift.fromJson(item))
              .toList()),
      nextOffset: json['next_offset'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'total_count': totalCount,
        'gifts': gifts.map((item) => item.toJson()).toList(),
        'next_offset': nextOffset,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
