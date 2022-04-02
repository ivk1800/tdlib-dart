import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The link is a link to a background. Call searchBackground with the given
/// background name to process the link
class InternalLinkTypeBackground extends InternalLinkType {
  InternalLinkTypeBackground({required this.backgroundName});

  /// [backgroundName] Name of the background
  final String backgroundName;

  static const String CONSTRUCTOR = 'internalLinkTypeBackground';

  static InternalLinkTypeBackground? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeBackground(backgroundName: json['background_name']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'background_name': this.backgroundName, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
