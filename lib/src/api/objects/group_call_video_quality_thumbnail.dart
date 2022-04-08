import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The worst available video quality
@immutable
class GroupCallVideoQualityThumbnail extends GroupCallVideoQuality {
  const GroupCallVideoQualityThumbnail();

  static const String constructor = 'groupCallVideoQualityThumbnail';

  static GroupCallVideoQualityThumbnail? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const GroupCallVideoQualityThumbnail();
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
