import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is a link to the Telegram Star purchase section of the
/// application
@immutable
class InternalLinkTypeBuyStars extends InternalLinkType {
  const InternalLinkTypeBuyStars({
    required this.starCount,
    required this.purpose,
  });

  /// [starCount] The number of Telegram Stars that must be owned by the user
  final int starCount;

  /// [purpose] Purpose of Telegram Star purchase. Arbitrary string specified by
  /// the server, for example, "subs" if the Telegram Stars are required to
  /// extend channel subscriptions
  final String purpose;

  static const String constructor = 'internalLinkTypeBuyStars';

  static InternalLinkTypeBuyStars? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeBuyStars(
      starCount: json['star_count'] as int,
      purpose: json['purpose'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'star_count': starCount,
        'purpose': purpose,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
