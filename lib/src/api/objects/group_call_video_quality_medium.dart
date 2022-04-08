import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The medium video quality
@immutable
class GroupCallVideoQualityMedium extends GroupCallVideoQuality {
  const GroupCallVideoQualityMedium();

  static const String constructor = 'groupCallVideoQualityMedium';

  static GroupCallVideoQualityMedium? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const GroupCallVideoQualityMedium();
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
