import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes a profile photo for the current user
/// Returns [Ok]
@immutable
class SetProfilePhoto extends TdFunction {
  const SetProfilePhoto({
    required this.photo,
  });

  /// [photo] Profile photo to set
  final InputChatPhoto photo;

  static const String constructor = 'setProfilePhoto';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'photo': photo.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
