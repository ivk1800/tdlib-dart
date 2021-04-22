import '../tdapi.dart';

/// Accepts an incoming call
/// Returns [Ok]
class AcceptCall extends TdFunction {
  AcceptCall({required this.callId, required this.protocol});

  /// [callId] Call identifier
  final int callId;

  /// [protocol] Description of the call protocols supported by the application
  final CallProtocol protocol;

  static const String CONSTRUCTOR = 'acceptCall';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'call_id': this.callId,
        'protocol': this.protocol.toJson(),
        '@type': CONSTRUCTOR
      };
}
