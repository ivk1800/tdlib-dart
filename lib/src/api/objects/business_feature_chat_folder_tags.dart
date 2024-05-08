import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The ability to display folder names for each chat in the chat list
@immutable
class BusinessFeatureChatFolderTags extends BusinessFeature {
  const BusinessFeatureChatFolderTags();

  static const String constructor = 'businessFeatureChatFolderTags';

  static BusinessFeatureChatFolderTags? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const BusinessFeatureChatFolderTags();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
