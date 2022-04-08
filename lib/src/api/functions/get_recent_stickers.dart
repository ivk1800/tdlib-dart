import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns a list of recently used stickers
/// Returns [Stickers]
@immutable
class GetRecentStickers extends TdFunction {
  const GetRecentStickers({
    required this.isAttached,
  });

  /// [isAttached] Pass true to return stickers and masks that were recently
  /// attached to photos or video files; pass false to return recently sent
  /// stickers
  final bool isAttached;

  static const String constructor = 'getRecentStickers';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'is_attached': isAttached,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
