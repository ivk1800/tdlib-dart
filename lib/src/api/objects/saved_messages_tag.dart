import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a tag used in Saved Messages or a Saved Messages topic
@immutable
class SavedMessagesTag extends TdObject {
  const SavedMessagesTag({
    required this.tag,
    required this.label,
    required this.count,
  });

  /// [tag] The tag
  final ReactionType tag;

  /// [label] Label of the tag; 0-12 characters. Always empty if the tag is
  /// returned for a Saved Messages topic
  final String label;

  /// [count] Number of times the tag was used; may be 0 if the tag has
  /// non-empty label
  final int count;

  static const String constructor = 'savedMessagesTag';

  static SavedMessagesTag? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SavedMessagesTag(
      tag: ReactionType.fromJson(json['tag'] as Map<String, dynamic>?)!,
      label: json['label'] as String,
      count: json['count'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'tag': tag.toJson(),
        'label': label,
        'count': count,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
