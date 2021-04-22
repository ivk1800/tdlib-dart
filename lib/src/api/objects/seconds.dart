import '../tdapi.dart';

/// Contains a value representing a number of seconds
class Seconds extends TdObject {
  Seconds({required this.seconds});

  /// [seconds] Number of seconds
  final double seconds;

  static const String CONSTRUCTOR = 'seconds';

  static Seconds? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Seconds(seconds: json['seconds']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'seconds': this.seconds, '@type': CONSTRUCTOR};
}
