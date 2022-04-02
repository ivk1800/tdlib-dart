import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Installs/uninstalls or activates/archives a sticker set
/// Returns [Ok]
class ChangeStickerSet extends TdFunction {
  ChangeStickerSet(
      {required this.setId,
      required this.isInstalled,
      required this.isArchived});

  /// [setId] Identifier of the sticker set
  final int setId;

  /// [isInstalled] The new value of is_installed
  final bool isInstalled;

  /// [isArchived] The new value of is_archived. A sticker set can't be
  /// installed and archived simultaneously
  final bool isArchived;

  static const String CONSTRUCTOR = 'changeStickerSet';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'set_id': this.setId,
        'is_installed': this.isInstalled,
        'is_archived': this.isArchived,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
