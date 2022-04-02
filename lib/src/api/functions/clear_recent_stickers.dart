import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Clears the list of recently used stickers
/// Returns [Ok]
class ClearRecentStickers extends TdFunction {
  ClearRecentStickers({required this.isAttached});

  /// [isAttached] Pass true to clear the list of stickers recently attached to
  /// photo or video files; pass false to clear the list of recently sent
  /// stickers
  final bool isAttached;

  static const String CONSTRUCTOR = 'clearRecentStickers';

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
