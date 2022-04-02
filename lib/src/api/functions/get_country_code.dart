import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Uses the current IP address to find the current country. Returns
/// two-letter ISO 3166-1 alpha-2 country code. Can be called before
/// authorization
/// Returns [Text]
class GetCountryCode extends TdFunction {
  GetCountryCode();

  static const String CONSTRUCTOR = 'getCountryCode';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
