import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of available TDLib internal log tags
@immutable
class LogTags extends TdObject {
  const LogTags({
    required this.tags,
  });

  /// [tags] List of log tags
  final List<String> tags;

  static const String constructor = 'logTags';

  static LogTags? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LogTags(
      tags: List<String>.from(((json['tags'] as List<dynamic>?) ?? <dynamic>[])
          .map((item) => item)
          .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'tags': tags.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
