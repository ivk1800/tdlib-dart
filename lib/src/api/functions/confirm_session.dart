import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Confirms an unconfirmed session of the current user from another device
/// Returns [Ok]
@immutable
class ConfirmSession extends TdFunction {
  const ConfirmSession({
    required this.sessionId,
  });

  /// [sessionId] Session identifier
  final int sessionId;

  static const String constructor = 'confirmSession';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'session_id': sessionId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
