import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Changes the username of the current user
/// Returns [Ok]
class SetUsername extends TdFunction {
  SetUsername({required this.username});

  /// [username] The new value of the username. Use an empty string to remove
  /// the username
  final String username;

  static const String CONSTRUCTOR = 'setUsername';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'username': this.username, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
