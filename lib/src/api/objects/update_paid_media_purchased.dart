import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Paid media were purchased by a user; for bots only
@immutable
class UpdatePaidMediaPurchased extends Update {
  const UpdatePaidMediaPurchased({
    required this.userId,
    required this.payload,
  });

  /// [userId] User identifier
  final int userId;

  /// [payload] Bot-specified payload for the paid media
  final String payload;

  static const String constructor = 'updatePaidMediaPurchased';

  static UpdatePaidMediaPurchased? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdatePaidMediaPurchased(
      userId: json['user_id'] as int,
      payload: json['payload'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'payload': payload,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
