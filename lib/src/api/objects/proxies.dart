import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Represents a list of proxy servers
class Proxies extends TdObject {
  Proxies({required this.proxies});

  /// [proxies] List of proxy servers
  final List<Proxy> proxies;

  static const String CONSTRUCTOR = 'proxies';

  static Proxies? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Proxies(
        proxies: List<Proxy>.from((json['proxies'] ?? [])
            .map((item) => Proxy.fromJson(item))
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'proxies': proxies.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
