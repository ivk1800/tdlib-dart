import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a value representing a number of seconds
@immutable
class Seconds extends TdObject {
  const Seconds({
    required this.seconds,
  });

  /// [seconds] Number of seconds
  final double seconds;

  static const String constructor = 'seconds';

  static Seconds? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Seconds(
      seconds: json['seconds'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'seconds': seconds,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
