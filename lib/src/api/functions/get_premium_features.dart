import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns information about features, available to Premium users
/// Returns [PremiumFeatures]
@immutable
class GetPremiumFeatures extends TdFunction {
  const GetPremiumFeatures({
    this.source,
  });

  /// [source] Source of the request; pass null if the method is called from
  /// some non-standard source
  final PremiumSource? source;

  static const String constructor = 'getPremiumFeatures';

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
