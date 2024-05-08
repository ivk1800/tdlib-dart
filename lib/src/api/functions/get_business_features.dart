import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns information about features, available to Business users
/// Returns [BusinessFeatures]
@immutable
class GetBusinessFeatures extends TdFunction {
  const GetBusinessFeatures({
    this.source,
  });

  /// [source] Source of the request; pass null if the method is called from
  /// settings or some non-standard source
  final BusinessFeature? source;

  static const String constructor = 'getBusinessFeatures';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'source': source?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
