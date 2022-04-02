import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Changes the location of the current user. Needs to be called if
/// GetOption("is_location_visible") is true and location changes for more
/// than 1 kilometer
/// Returns [Ok]
class SetLocation extends TdFunction {
  SetLocation({required this.location});

  /// [location] The new location of the user
  final Location location;

  static const String CONSTRUCTOR = 'setLocation';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'location': this.location.toJson(), '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
