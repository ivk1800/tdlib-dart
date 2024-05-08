import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about features, available to Business user accounts
@immutable
class BusinessFeatures extends TdObject {
  const BusinessFeatures({
    required this.features,
  });

  /// [features] The list of available business features
  final List<BusinessFeature> features;

  static const String constructor = 'businessFeatures';

  static BusinessFeatures? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BusinessFeatures(
      features: List<BusinessFeature>.from(
          ((json['features'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => BusinessFeature.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'features': features.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
