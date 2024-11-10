import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A message with a gift
@immutable
class PushMessageContentGift extends PushMessageContent {
  const PushMessageContentGift({
    required this.starCount,
  });

  /// [starCount] Number of Telegram Stars that sender paid for the gift
  final int starCount;

  static const String constructor = 'pushMessageContentGift';

  static PushMessageContentGift? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentGift(
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
