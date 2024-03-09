import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of tags used in Saved Messages
@immutable
class SavedMessagesTags extends TdObject {
  const SavedMessagesTags({
    required this.tags,
  });

  /// [tags] List of tags
  final List<SavedMessagesTag> tags;

  static const String constructor = 'savedMessagesTags';

  static SavedMessagesTags? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SavedMessagesTags(
      tags: List<SavedMessagesTag>.from(
          ((json['tags'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => SavedMessagesTag.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'tags': tags.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
