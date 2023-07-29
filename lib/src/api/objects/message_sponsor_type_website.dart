import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The sponsor is a website
@immutable
class MessageSponsorTypeWebsite extends MessageSponsorType {
  const MessageSponsorTypeWebsite({
    required this.url,
    required this.name,
  });

  /// [url] URL of the website
  final String url;

  /// [name] Name of the website
  final String name;

  static const String constructor = 'messageSponsorTypeWebsite';

  static MessageSponsorTypeWebsite? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageSponsorTypeWebsite(
      url: json['url'] as String,
      name: json['name'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'url': url,
        'name': name,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
