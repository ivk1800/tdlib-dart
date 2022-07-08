import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A user opened the Premium features screen from settings
@immutable
class PremiumSourceSettings extends PremiumSource {
  const PremiumSourceSettings();

  static const String constructor = 'premiumSourceSettings';

  static PremiumSourceSettings? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumSourceSettings();
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
