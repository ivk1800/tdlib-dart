import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Sends debug information for a call
/// Returns [Ok]
class SendCallDebugInformation extends TdFunction {
  SendCallDebugInformation(
      {required this.callId, required this.debugInformation});

  /// [callId] Call identifier
  final int callId;

  /// [debugInformation] Debug information in application-specific format
  final String debugInformation;

  static const String CONSTRUCTOR = 'sendCallDebugInformation';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'call_id': this.callId,
        'debug_information': this.debugInformation,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
