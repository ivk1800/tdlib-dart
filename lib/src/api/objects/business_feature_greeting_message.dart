import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The ability to set up a greeting message
@immutable
class BusinessFeatureGreetingMessage extends BusinessFeature {
  const BusinessFeatureGreetingMessage();

  static const String constructor = 'businessFeatureGreetingMessage';

  static BusinessFeatureGreetingMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const BusinessFeatureGreetingMessage();
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
