import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes the location of the current user. Needs to be called if
/// getOption("is_location_visible") is true and location changes for more
/// than 1 kilometer
/// Returns [Ok]
@immutable
class SetLocation extends TdFunction {
  const SetLocation({
    required this.location,
  });

  /// [location] The new location of the user
  final Location location;

  static const String constructor = 'setLocation';

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
