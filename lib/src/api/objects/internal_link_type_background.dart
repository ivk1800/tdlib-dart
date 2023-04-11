import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is a link to a background. Call searchBackground with the given
/// background name to process the link
@immutable
class InternalLinkTypeBackground extends InternalLinkType {
  const InternalLinkTypeBackground({
    required this.backgroundName,
  });

  /// [backgroundName] Name of the background
  final String backgroundName;

  static const String constructor = 'internalLinkTypeBackground';

  static InternalLinkTypeBackground? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeBackground(
      backgroundName: json['background_name'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'background_name': backgroundName,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
