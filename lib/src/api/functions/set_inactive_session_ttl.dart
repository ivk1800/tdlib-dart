import '../tdapi.dart';

/// Changes the period of inactivity after which sessions will automatically
/// be terminated
/// Returns [Ok]
class SetInactiveSessionTtl extends TdFunction {
  SetInactiveSessionTtl({required this.inactiveSessionTtlDays});

  /// [inactiveSessionTtlDays] New number of days of inactivity before sessions
  /// will be automatically terminated; 1-366 days
  final int inactiveSessionTtlDays;

  static const String CONSTRUCTOR = 'setInactiveSessionTtl';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'inactive_session_ttl_days': this.inactiveSessionTtlDays,
        '@type': CONSTRUCTOR
      };
}
