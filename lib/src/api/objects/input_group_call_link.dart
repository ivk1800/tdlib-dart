import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The group call is accessible through a link
@immutable
class InputGroupCallLink extends InputGroupCall {
  const InputGroupCallLink({required this.link});

  /// [link] The link for the group call
  final String link;

  static const String constructor = 'inputGroupCallLink';

  static InputGroupCallLink? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputGroupCallLink(link: json['link'] as String);
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'link': link,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
