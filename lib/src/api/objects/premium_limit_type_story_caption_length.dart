import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The maximum length of captions of sent stories
@immutable
class PremiumLimitTypeStoryCaptionLength extends PremiumLimitType {
  const PremiumLimitTypeStoryCaptionLength();

  static const String constructor = 'premiumLimitTypeStoryCaptionLength';

  static PremiumLimitTypeStoryCaptionLength? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumLimitTypeStoryCaptionLength();
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
