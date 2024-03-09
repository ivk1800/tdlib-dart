import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Toggles whether chat folder tags are enabled
/// Returns [Ok]
@immutable
class ToggleChatFolderTags extends TdFunction {
  const ToggleChatFolderTags({
    required this.areTagsEnabled,
  });

  /// [areTagsEnabled] Pass true to enable folder tags; pass false to disable
  /// them
  final bool areTagsEnabled;

  static const String constructor = 'toggleChatFolderTags';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'are_tags_enabled': areTagsEnabled,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
