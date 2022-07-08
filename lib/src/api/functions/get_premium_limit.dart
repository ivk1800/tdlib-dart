import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns information about a limit, increased for Premium users. Returns a
/// 404 error if the limit is unknown
/// Returns [PremiumLimit]
@immutable
class GetPremiumLimit extends TdFunction {
  const GetPremiumLimit({
    required this.limitType,
  });

  /// [limitType] Type of the limit
  final PremiumLimitType limitType;

  static const String constructor = 'getPremiumLimit';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'limit_type': limitType.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
