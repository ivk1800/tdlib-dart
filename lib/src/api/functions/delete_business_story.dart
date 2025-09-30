import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Deletes a story posted by the bot on behalf of a business account; for
/// bots only
/// Returns [Ok]
@immutable
class DeleteBusinessStory extends TdFunction {
  const DeleteBusinessStory({
    required this.businessConnectionId,
    required this.storyId,
  });

  /// [businessConnectionId] Unique identifier of business connection
  final String businessConnectionId;

  /// [storyId] Identifier of the story to delete
  final int storyId;

  static const String constructor = 'deleteBusinessStory';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'business_connection_id': businessConnectionId,
    'story_id': storyId,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
