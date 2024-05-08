import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about a business chat link
@immutable
class BusinessChatLink extends TdObject {
  const BusinessChatLink({
    required this.link,
    required this.text,
    required this.title,
    required this.viewCount,
  });

  /// [link] The HTTPS link
  final String link;

  /// [text] Message draft text that will be added to the input field
  final FormattedText text;

  /// [title] Link title
  final String title;

  /// [viewCount] Number of times the link was used
  final int viewCount;

  static const String constructor = 'businessChatLink';

  static BusinessChatLink? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BusinessChatLink(
      link: json['link'] as String,
      text: FormattedText.fromJson(json['text'] as Map<String, dynamic>?)!,
      title: json['title'] as String,
      viewCount: json['view_count'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'link': link,
        'text': text.toJson(),
        'title': title,
        'view_count': viewCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
