import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a number of Telegram Stars
@immutable
class StarCount extends TdObject {
  const StarCount({required this.starCount});

  /// [starCount] Number of Telegram Stars
  final int starCount;

  static const String constructor = 'starCount';

  static StarCount? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarCount(starCount: json['star_count'] as int);
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'star_count': starCount,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
