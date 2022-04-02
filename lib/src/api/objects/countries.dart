import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Contains information about countries
class Countries extends TdObject {
  Countries({required this.countries});

  /// [countries] The list of countries
  final List<CountryInfo> countries;

  static const String CONSTRUCTOR = 'countries';

  static Countries? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Countries(
        countries: List<CountryInfo>.from((json['countries'] ?? [])
            .map((item) => CountryInfo.fromJson(item))
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'countries': countries.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
