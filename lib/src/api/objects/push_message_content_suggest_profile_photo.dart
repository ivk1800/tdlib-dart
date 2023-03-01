import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A profile photo was suggested to the user
@immutable
class PushMessageContentSuggestProfilePhoto extends PushMessageContent {
  const PushMessageContentSuggestProfilePhoto();

  static const String constructor = 'pushMessageContentSuggestProfilePhoto';

  static PushMessageContentSuggestProfilePhoto? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PushMessageContentSuggestProfilePhoto();
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
