import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The sponsor is a web app
@immutable
class MessageSponsorTypeWebApp extends MessageSponsorType {
  const MessageSponsorTypeWebApp({
    required this.webAppTitle,
    required this.link,
  });

  /// [webAppTitle] Web App title
  final String webAppTitle;

  /// [link] An internal link to be opened when the sponsored message is clicked
  final InternalLinkType link;

  static const String constructor = 'messageSponsorTypeWebApp';

  static MessageSponsorTypeWebApp? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageSponsorTypeWebApp(
      webAppTitle: json['web_app_title'] as String,
      link: InternalLinkType.fromJson(json['link'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'web_app_title': webAppTitle,
        'link': link.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
