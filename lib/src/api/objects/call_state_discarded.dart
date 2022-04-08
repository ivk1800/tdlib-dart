import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The call has ended successfully
@immutable
class CallStateDiscarded extends CallState {
  const CallStateDiscarded({
    required this.reason,
    required this.needRating,
    required this.needDebugInformation,
  });

  /// [reason] The reason, why the call has ended
  final CallDiscardReason reason;

  /// [needRating] True, if the call rating must be sent to the server
  final bool needRating;

  /// [needDebugInformation] True, if the call debug information must be sent to
  /// the server
  final bool needDebugInformation;

  static const String constructor = 'callStateDiscarded';

  static CallStateDiscarded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CallStateDiscarded(
      reason: CallDiscardReason.fromJson(json['reason'])!,
      needRating: json['need_rating'],
      needDebugInformation: json['need_debug_information'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'reason': reason.toJson(),
        'need_rating': needRating,
        'need_debug_information': needDebugInformation,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
