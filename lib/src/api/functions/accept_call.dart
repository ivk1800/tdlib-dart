import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Accepts an incoming call
/// Returns [Ok]
class AcceptCall extends TdFunction {
  AcceptCall({required this.callId, required this.protocol});

  /// [callId] Call identifier
  final int callId;

  /// [protocol] The call protocols supported by the application
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

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
