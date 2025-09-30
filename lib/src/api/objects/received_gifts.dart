import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a list of gifts received by a user or a chat
@immutable
class ReceivedGifts extends TdObject {
  const ReceivedGifts({
    required this.totalCount,
    required this.gifts,
    required this.areNotificationsEnabled,
    required this.nextOffset,
  });

  /// [totalCount] The total number of received gifts
  final int totalCount;

  /// [gifts] The list of gifts
  final List<ReceivedGift> gifts;

  /// [areNotificationsEnabled] True, if notifications about new gifts of the
  /// owner are enabled
  final bool areNotificationsEnabled;

  /// [nextOffset] The offset for the next request. If empty, then there are no
  /// more results
  final String nextOffset;

  static const String constructor = 'receivedGifts';

  static ReceivedGifts? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReceivedGifts(
      totalCount: json['total_count'] as int,
      gifts: List<ReceivedGift>.from(
        ((json['gifts'] as List<dynamic>?) ?? <dynamic>[])
            .map((item) => ReceivedGift.fromJson(item))
            .toList(),
      ),
      areNotificationsEnabled: json['are_notifications_enabled'] as bool,
      nextOffset: json['next_offset'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'total_count': totalCount,
    'gifts': gifts.map((item) => item.toJson()).toList(),
    'are_notifications_enabled': areNotificationsEnabled,
    'next_offset': nextOffset,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
