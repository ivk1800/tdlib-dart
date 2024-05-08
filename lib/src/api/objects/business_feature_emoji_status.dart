import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The ability to show an emoji status along with the business name
@immutable
class BusinessFeatureEmojiStatus extends BusinessFeature {
  const BusinessFeatureEmojiStatus();

  static const String constructor = 'businessFeatureEmojiStatus';

  static BusinessFeatureEmojiStatus? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const BusinessFeatureEmojiStatus();
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
