import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The maximum number of chat filters
@immutable
class PremiumLimitTypeChatFilterCount extends PremiumLimitType {
  const PremiumLimitTypeChatFilterCount();

  static const String constructor = 'premiumLimitTypeChatFilterCount';

  static PremiumLimitTypeChatFilterCount? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumLimitTypeChatFilterCount();
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
