import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns the current weather in the given location
/// Returns [CurrentWeather]
@immutable
class GetCurrentWeather extends TdFunction {
  const GetCurrentWeather({
    required this.location,
  });

  /// [location] The location
  final Location location;

  static const String constructor = 'getCurrentWeather';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'location': location.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
