import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Writes a part of a generated file. This method is intended to be used only
/// if the application has no direct access to TDLib's file system, because it
/// is usually slower than a direct write to the destination file
/// Returns [Ok]
class WriteGeneratedFilePart extends TdFunction {
  WriteGeneratedFilePart(
      {required this.generationId, required this.offset, required this.data});

  /// [generationId] The identifier of the generation process
  final int generationId;

  /// [offset] The offset from which to write the data to the file
  final int offset;

  /// [data] The data to write
  final String data;

  static const String CONSTRUCTOR = 'writeGeneratedFilePart';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'generation_id': this.generationId,
        'offset': this.offset,
        'data': this.data,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
