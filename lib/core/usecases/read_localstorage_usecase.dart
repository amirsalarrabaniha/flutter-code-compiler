
import 'package:code_editor/core/resource/data_state.dart';
import 'package:code_editor/core/resource/use_case.dart';
import 'package:code_editor/data/repositories/local_storage_repository.dart';

class ReadLocalStorageUseCase extends UseCase<DataState<String>, String> {
  LocalStorageRepository localStorageRepository;

  ReadLocalStorageUseCase(this.localStorageRepository);

  @override
  Future<DataState<String>> call(String param) async {
    return await localStorageRepository.readStorageData(param);
  }
}
