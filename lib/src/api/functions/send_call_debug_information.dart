import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Sends debug information for a call
/// Returns [Ok]
@immutable
class SendCallDebugInformation extends TdFunction {
  const SendCallDebugInformation({
    required this.callId,
    required this.debugInformation,
  });

  /// [callId] Call identifier
  final int callId;

  /// [debugInformation] Debug information in application-specific format
  final String debugInformation;

  static const String constructor = 'sendCallDebugInformation';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'call_id': callId,
        'debug_information': debugInformation,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
