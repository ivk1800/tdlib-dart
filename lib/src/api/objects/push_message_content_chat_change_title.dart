import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A chat title was edited
class PushMessageContentChatChangeTitle extends PushMessageContent {
  PushMessageContentChatChangeTitle({required this.title});

  /// [title] New chat title
  final String title;

  static const String CONSTRUCTOR = 'pushMessageContentChatChangeTitle';

  static PushMessageContentChatChangeTitle? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentChatChangeTitle(title: json['title']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'title': this.title, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
