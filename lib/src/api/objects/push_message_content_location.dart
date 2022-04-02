import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A message with a location
class PushMessageContentLocation extends PushMessageContent {
  PushMessageContentLocation({required this.isLive, required this.isPinned});

  /// [isLive] True, if the location is live
  final bool isLive;

  /// [isPinned] True, if the message is a pinned message with the specified
  /// content
  final bool isPinned;

  static const String CONSTRUCTOR = 'pushMessageContentLocation';

  static PushMessageContentLocation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentLocation(
        isLive: json['is_live'], isPinned: json['is_pinned']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'is_live': this.isLive,
        'is_pinned': this.isPinned,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
