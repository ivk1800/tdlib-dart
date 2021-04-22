import '../tdapi.dart';

/// Sends call signaling data
/// Returns [Ok]
class SendCallSignalingData extends TdFunction {
  SendCallSignalingData({required this.callId, required this.data});

  /// [callId] Call identifier
  final int callId;

  /// [data] The data
  final String data;

  static const String CONSTRUCTOR = 'sendCallSignalingData';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'call_id': this.callId, 'data': this.data, '@type': CONSTRUCTOR};
}
