import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains an HTTPS URL, which can be used to get information about a user
@immutable
class UserLink extends TdObject {
  const UserLink({
    required this.url,
    required this.expiresIn,
  });

  /// [url] The URL
  final String url;

  /// [expiresIn] Left time for which the link is valid, in seconds; 0 if the
  /// link is a public username link
  final int expiresIn;

  static const String constructor = 'userLink';

  static UserLink? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UserLink(
      url: json['url'],
      expiresIn: json['expires_in'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'url': url,
        'expires_in': expiresIn,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
