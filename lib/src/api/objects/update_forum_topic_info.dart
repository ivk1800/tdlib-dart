import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Basic information about a topic in a forum chat was changed
@immutable
class UpdateForumTopicInfo extends Update {
  const UpdateForumTopicInfo({required this.info});

  /// [info] New information about the topic
  final ForumTopicInfo info;

  static const String constructor = 'updateForumTopicInfo';

  static UpdateForumTopicInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateForumTopicInfo(
      info: ForumTopicInfo.fromJson(json['info'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'info': info.toJson(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
