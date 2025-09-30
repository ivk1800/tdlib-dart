import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes a profile photo of a business account; for bots only
/// Returns [Ok]
@immutable
class SetBusinessAccountProfilePhoto extends TdFunction {
  const SetBusinessAccountProfilePhoto({
    required this.businessConnectionId,
    this.photo,
    required this.isPublic,
  });

  /// [businessConnectionId] Unique identifier of business connection
  final String businessConnectionId;

  /// [photo] Profile photo to set; pass null to remove the photo
  final InputChatPhoto? photo;

  /// [isPublic] Pass true to set the public photo, which will be visible even
  /// if the main photo is hidden by privacy settings
  final bool isPublic;

  static const String constructor = 'setBusinessAccountProfilePhoto';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'business_connection_id': businessConnectionId,
    'photo': photo?.toJson(),
    'is_public': isPublic,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
