import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Sets the value of an option. (Check the list of available options on
/// https://core.telegram.org/tdlib/options.) Only writable options can be
/// set. Can be called before authorization
/// Returns [Ok]
class SetOption extends TdFunction {
  SetOption({required this.name, this.value});

  /// [name] The name of the option
  final String name;

  /// [value] The new value of the option; pass null to reset option value to a
  /// default value
  final OptionValue? value;

  static const String CONSTRUCTOR = 'setOption';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'name': this.name, 'value': this.value?.toJson(), '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
