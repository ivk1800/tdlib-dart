import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns an HTTP URL which can be used to automatically authorize the
/// current user on a website after clicking an HTTP link. Use the method
/// getExternalLinkInfo to find whether a prior user confirmation is needed
/// Returns [HttpUrl]
@immutable
class GetExternalLink extends TdFunction {
  const GetExternalLink({
    required this.link,
    required this.allowWriteAccess,
  });

  /// [link] The HTTP link
  final String link;

  /// [allowWriteAccess] True, if the current user allowed the bot, returned in
  /// getExternalLinkInfo, to send them messages
  final bool allowWriteAccess;

  static const String constructor = 'getExternalLink';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'link': link,
        'allow_write_access': allowWriteAccess,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
