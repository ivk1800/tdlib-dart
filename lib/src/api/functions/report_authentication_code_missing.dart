import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Reports that authentication code wasn't delivered via SMS; for official
/// mobile apps only. Works only when the current authorization state is
/// authorizationStateWaitCode
/// Returns [Ok]
@immutable
class ReportAuthenticationCodeMissing extends TdFunction {
  const ReportAuthenticationCodeMissing({
    required this.mobileNetworkCode,
  });

  /// [mobileNetworkCode] Current mobile network code
  final String mobileNetworkCode;

  static const String constructor = 'reportAuthenticationCodeMissing';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'mobile_network_code': mobileNetworkCode,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
