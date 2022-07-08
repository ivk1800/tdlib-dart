import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A limit was exceeded
@immutable
class PremiumSourceLimitExceeded extends PremiumSource {
  const PremiumSourceLimitExceeded({
    required this.limitType,
  });

  /// [limitType] Type of the exceeded limit
  final PremiumLimitType limitType;

  static const String constructor = 'premiumSourceLimitExceeded';

  static PremiumSourceLimitExceeded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PremiumSourceLimitExceeded(
      limitType: PremiumLimitType.fromJson(json['limit_type'])!,
    );
  }

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
