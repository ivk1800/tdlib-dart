import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about a user that added paid reactions
@immutable
class PaidReactor extends TdObject {
  const PaidReactor({
    this.senderId,
    required this.starCount,
    required this.isTop,
    required this.isMe,
    required this.isAnonymous,
  });

  /// [senderId] Identifier of the user or chat that added the reactions; may be
  /// null for anonymous reactors that aren't the current user
  final MessageSender? senderId;

  /// [starCount] Number of Telegram Stars added
  final int starCount;

  /// [isTop] True, if the reactor is one of the most active reactors; may be
  /// false if the reactor is the current user
  final bool isTop;

  /// [isMe] True, if the paid reaction was added by the current user
  final bool isMe;

  /// [isAnonymous] True, if the reactor is anonymous
  final bool isAnonymous;

  static const String constructor = 'paidReactor';

  static PaidReactor? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PaidReactor(
      senderId:
          MessageSender.fromJson(json['sender_id'] as Map<String, dynamic>?),
      starCount: json['star_count'] as int,
      isTop: json['is_top'] as bool,
      isMe: json['is_me'] as bool,
      isAnonymous: json['is_anonymous'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sender_id': senderId?.toJson(),
        'star_count': starCount,
        'is_top': isTop,
        'is_me': isMe,
        'is_anonymous': isAnonymous,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
