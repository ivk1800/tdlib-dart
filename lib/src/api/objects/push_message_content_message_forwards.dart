import '../tdapi.dart';

/// A forwarded messages
class PushMessageContentMessageForwards extends PushMessageContent {
  PushMessageContentMessageForwards({required this.totalCount});

  /// [totalCount] Number of forwarded messages
  final int totalCount;

  static const String CONSTRUCTOR = 'pushMessageContentMessageForwards';

  static PushMessageContentMessageForwards? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentMessageForwards(totalCount: json['total_count']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'total_count': this.totalCount, '@type': CONSTRUCTOR};
}
