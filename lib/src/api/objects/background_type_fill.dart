import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A filled background
@immutable
class BackgroundTypeFill extends BackgroundType {
  const BackgroundTypeFill({
    required this.fill,
  });

  /// [fill] The background fill
  final BackgroundFill fill;

  static const String constructor = 'backgroundTypeFill';

  static BackgroundTypeFill? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BackgroundTypeFill(
      fill: BackgroundFill.fromJson(json['fill'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'fill': fill.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
