import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a paid media
@immutable
abstract class PaidMedia extends TdObject {
  const PaidMedia();

  static const String constructor = 'paidMedia';

  /// Inherited by:
  /// [PaidMediaPhoto]
  /// [PaidMediaPreview]
  /// [PaidMediaUnsupported]
  /// [PaidMediaVideo]
  static PaidMedia? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case PaidMediaPhoto.constructor:
        return PaidMediaPhoto.fromJson(json);
      case PaidMediaPreview.constructor:
        return PaidMediaPreview.fromJson(json);
      case PaidMediaUnsupported.constructor:
        return PaidMediaUnsupported.fromJson(json);
      case PaidMediaVideo.constructor:
        return PaidMediaVideo.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
