import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Constructs a persistent HTTP URL for a background
/// Returns [HttpUrl]
@immutable
class GetBackgroundUrl extends TdFunction {
  const GetBackgroundUrl({
    required this.name,
    required this.type,
  });

  /// [name] Background name
  final String name;

  /// [type] Background type; backgroundTypeChatTheme isn't supported
  final BackgroundType type;

  static const String constructor = 'getBackgroundUrl';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': name,
        'type': type.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
