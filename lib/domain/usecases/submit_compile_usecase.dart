import 'package:code_editor/core/params/submit_compile_params.dart';
import 'package:code_editor/core/resource/data_state.dart';
import 'package:code_editor/core/resource/use_case.dart';
import 'package:code_editor/data/repositories/compile_repository.dart';
import 'package:code_editor/domain/entities/compile_entity.dart';

class SubmitCompileUseCase
    extends UseCase<DataState<CompileEntity>, SubmitCompileParams> {
  CompileRepository repository;

  SubmitCompileUseCase(this.repository);

  @override
  Future<DataState<CompileEntity>> call(SubmitCompileParams param) async {
    return await repository.submitCompile(param);
  }
}
