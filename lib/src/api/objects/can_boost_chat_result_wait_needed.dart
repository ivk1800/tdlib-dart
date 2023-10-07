import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user must wait the specified time before the boost can be moved to
/// another chat
@immutable
class CanBoostChatResultWaitNeeded extends CanBoostChatResult {
  const CanBoostChatResultWaitNeeded({
    required this.retryAfter,
  });

  /// [retryAfter] Time left before the user can boost another chat
  final int retryAfter;

  static const String constructor = 'canBoostChatResultWaitNeeded';

  static CanBoostChatResultWaitNeeded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CanBoostChatResultWaitNeeded(
      retryAfter: json['retry_after'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'retry_after': retryAfter,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
