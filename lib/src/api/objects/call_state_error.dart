import '../tdapi.dart';

/// The call has ended with an error
class CallStateError extends CallState {
  CallStateError({required this.error});

  /// [error] Error. An error with the code 4005000 will be returned if an
  /// outgoing call is missed because of an expired timeout
  final TdError error;

  static const String CONSTRUCTOR = 'callStateError';

  static CallStateError? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CallStateError(error: TdError.fromJson(json['error'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'error': this.error.toJson(), '@type': CONSTRUCTOR};
}
