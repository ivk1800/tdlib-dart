import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The maximum number of joined supergroups and channels
@immutable
class PremiumLimitTypeSupergroupCount extends PremiumLimitType {
  const PremiumLimitTypeSupergroupCount();

  static const String constructor = 'premiumLimitTypeSupergroupCount';

  static PremiumLimitTypeSupergroupCount? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumLimitTypeSupergroupCount();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
