import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a list of stories
@immutable
class Stories extends TdObject {
  const Stories({
    required this.totalCount,
    required this.stories,
  });

  /// [totalCount] Approximate total number of stories found
  final int totalCount;

  /// [stories] The list of stories
  final List<Story> stories;

  static const String constructor = 'stories';

  static Stories? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Stories(
      totalCount: json['total_count'] as int,
      stories: List<Story>.from(
          ((json['stories'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => Story.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'total_count': totalCount,
        'stories': stories.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
