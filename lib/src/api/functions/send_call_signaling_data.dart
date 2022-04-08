import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Sends call signaling data
/// Returns [Ok]
@immutable
class SendCallSignalingData extends TdFunction {
  const SendCallSignalingData({
    required this.callId,
    required this.data,
  });

  /// [callId] Call identifier
  final int callId;

  /// [data] The data
  final String data;

  static const String constructor = 'sendCallSignalingData';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'call_id': callId,
        'data': data,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
