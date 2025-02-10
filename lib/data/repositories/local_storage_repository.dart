import 'package:code_editor/core/params/write_local_storage_params.dart';
import 'package:code_editor/core/resource/data_state.dart';

abstract class LocalStorageRepository {
  Future<DataState<String>> readStorageData(String key);

  Future<DataState<String?>> writeStorageData(WriteLocalStorageParam param);

  Future<DataState<String?>> deleteStorageData(String key);
}
