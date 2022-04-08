import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The best available video quality
@immutable
class GroupCallVideoQualityFull extends GroupCallVideoQuality {
  const GroupCallVideoQualityFull();

  static const String constructor = 'groupCallVideoQualityFull';

  static GroupCallVideoQualityFull? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const GroupCallVideoQualityFull();
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
