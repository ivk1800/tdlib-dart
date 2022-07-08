import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Sends log file for a call to Telegram servers
/// Returns [Ok]
@immutable
class SendCallLog extends TdFunction {
  const SendCallLog({
    required this.callId,
    required this.logFile,
  });

  /// [callId] Call identifier
  final int callId;

  /// [logFile] Call log file. Only inputFileLocal and inputFileGenerated are
  /// supported
  final InputFile logFile;

  static const String constructor = 'sendCallLog';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'call_id': callId,
        'log_file': logFile.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
