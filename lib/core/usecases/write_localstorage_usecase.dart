import 'package:code_editor/core/params/write_local_storage_params.dart';
import 'package:code_editor/core/resource/data_state.dart';
import 'package:code_editor/core/resource/use_case.dart';
import 'package:code_editor/data/repositories/local_storage_repository.dart';

class WriteLocalStorageUseCase
    extends UseCase<DataState<String?>, WriteLocalStorageParam> {
  LocalStorageRepository localStorageRepository;

  WriteLocalStorageUseCase(this.localStorageRepository);

  @override
  Future<DataState<String?>> call(WriteLocalStorageParam param) async {
    return await localStorageRepository.writeStorageData(param);
  }
}
