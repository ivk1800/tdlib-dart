import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The session was created recently, user needs to wait
class CanTransferOwnershipResultSessionTooFresh
    extends CanTransferOwnershipResult {
  CanTransferOwnershipResultSessionTooFresh({required this.retryAfter});

  /// [retryAfter] Time left before the session can be used to transfer
  /// ownership of a chat, in seconds
  final int retryAfter;

  static const String CONSTRUCTOR = 'canTransferOwnershipResultSessionTooFresh';

  static CanTransferOwnershipResultSessionTooFresh? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CanTransferOwnershipResultSessionTooFresh(
        retryAfter: json['retry_after']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'retry_after': this.retryAfter, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
