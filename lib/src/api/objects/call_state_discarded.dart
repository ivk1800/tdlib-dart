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
    required this.needLog,
  });

  /// [reason] The reason why the call has ended
  final CallDiscardReason reason;

  /// [needRating] True, if the call rating must be sent to the server
  final bool needRating;

  /// [needDebugInformation] True, if the call debug information must be sent to
  /// the server
  final bool needDebugInformation;

  /// [needLog] True, if the call log must be sent to the server
  final bool needLog;

  static const String constructor = 'callStateDiscarded';

  static CallStateDiscarded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CallStateDiscarded(
      reason:
          CallDiscardReason.fromJson(json['reason'] as Map<String, dynamic>?)!,
      needRating: json['need_rating'] as bool,
      needDebugInformation: json['need_debug_information'] as bool,
      needLog: json['need_log'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'reason': reason.toJson(),
        'need_rating': needRating,
        'need_debug_information': needDebugInformation,
        'need_log': needLog,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
