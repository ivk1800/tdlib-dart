import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a counter
@immutable
class Count extends TdObject {
  const Count({
    required this.count,
  });

  /// [count] Count
  final int count;

  static const String constructor = 'count';

  static Count? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Count(
      count: json['count'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'count': count,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
