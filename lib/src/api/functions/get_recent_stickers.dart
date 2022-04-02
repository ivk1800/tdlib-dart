import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns a list of recently used stickers
/// Returns [Stickers]
class GetRecentStickers extends TdFunction {
  GetRecentStickers({required this.isAttached});

  /// [isAttached] Pass true to return stickers and masks that were recently
  /// attached to photos or video files; pass false to return recently sent
  /// stickers
  final bool isAttached;

  static const String CONSTRUCTOR = 'getRecentStickers';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'is_attached': this.isAttached, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
