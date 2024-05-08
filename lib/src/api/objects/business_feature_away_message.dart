import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The ability to set up an away message
@immutable
class BusinessFeatureAwayMessage extends BusinessFeature {
  const BusinessFeatureAwayMessage();

  static const String constructor = 'businessFeatureAwayMessage';

  static BusinessFeatureAwayMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const BusinessFeatureAwayMessage();
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
