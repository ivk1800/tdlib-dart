import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about countries
@immutable
class Countries extends TdObject {
  const Countries({
    required this.countries,
  });

  /// [countries] The list of countries
  final List<CountryInfo> countries;

  static const String constructor = 'countries';

  static Countries? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Countries(
      countries: List<CountryInfo>.from((json['countries'] ?? [])
          .map((item) => CountryInfo.fromJson(item))
          .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'countries': countries.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
