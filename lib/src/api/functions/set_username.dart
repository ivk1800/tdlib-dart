import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes the username of the current user
/// Returns [Ok]
@immutable
class SetUsername extends TdFunction {
  const SetUsername({
    required this.username,
  });

  /// [username] The new value of the username. Use an empty string to remove
  /// the username
  final String username;

  static const String constructor = 'setUsername';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'username': username,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
