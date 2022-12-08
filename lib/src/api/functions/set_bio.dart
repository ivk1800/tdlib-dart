import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes the bio of the current user
/// Returns [Ok]
@immutable
class SetBio extends TdFunction {
  const SetBio({
    required this.bio,
  });

  /// [bio] The new value of the user bio; 0-getOption("bio_length_max")
  /// characters without line feeds
  final String bio;

  static const String constructor = 'setBio';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'bio': bio,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
