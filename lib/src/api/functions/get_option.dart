import '../tdapi.dart';

/// Returns the value of an option by its name. (Check the list of available
/// options on https://core.telegram.org/tdlib/options.) Can be called before
/// authorization
/// Returns [OptionValue]
class GetOption extends TdFunction {
  GetOption({required this.name});

  /// [name] The name of the option
  final String name;

  static const String CONSTRUCTOR = 'getOption';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'name': this.name, '@type': CONSTRUCTOR};
}
