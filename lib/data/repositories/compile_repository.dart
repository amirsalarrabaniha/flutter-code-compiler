import 'package:code_editor/core/params/submit_compile_params.dart';
import 'package:code_editor/core/resource/data_state.dart';
import 'package:code_editor/domain/entities/compile_entity.dart';

abstract class CompileRepository {
  Future<DataState<CompileEntity>> submitCompile(SubmitCompileParams params);
}
