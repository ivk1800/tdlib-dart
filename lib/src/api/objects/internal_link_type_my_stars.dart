import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is a link to the screen with information about Telegram Star
/// balance and transactions of the current user
@immutable
class InternalLinkTypeMyStars extends InternalLinkType {
  const InternalLinkTypeMyStars();

  static const String constructor = 'internalLinkTypeMyStars';

  static InternalLinkTypeMyStars? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const InternalLinkTypeMyStars();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
