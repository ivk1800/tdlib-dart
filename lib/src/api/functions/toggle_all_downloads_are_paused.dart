import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes pause state of all files in the file download list
/// Returns [Ok]
@immutable
class ToggleAllDownloadsArePaused extends TdFunction {
  const ToggleAllDownloadsArePaused({
    required this.arePaused,
  });

  /// [arePaused] Pass true to pause all downloads; pass false to unpause them
  final bool arePaused;

  static const String constructor = 'toggleAllDownloadsArePaused';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'are_paused': arePaused,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
