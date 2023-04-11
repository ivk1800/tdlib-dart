import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The 2-step verification was enabled recently, user needs to wait
@immutable
class CanTransferOwnershipResultPasswordTooFresh
    extends CanTransferOwnershipResult {
  const CanTransferOwnershipResultPasswordTooFresh({
    required this.retryAfter,
  });

  /// [retryAfter] Time left before the session can be used to transfer
  /// ownership of a chat, in seconds
  final int retryAfter;

  static const String constructor =
      'canTransferOwnershipResultPasswordTooFresh';

  static CanTransferOwnershipResultPasswordTooFresh? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CanTransferOwnershipResultPasswordTooFresh(
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
