import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Sets a sticker set title
/// Returns [Ok]
@immutable
class SetStickerSetTitle extends TdFunction {
  const SetStickerSetTitle({
    required this.name,
    required this.title,
  });

  /// [name] Sticker set name. The sticker set must be owned by the current user
  ///
  final String name;

  /// [title] New sticker set title
  final String title;

  static const String constructor = 'setStickerSetTitle';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': name,
        'title': title,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
