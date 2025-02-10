import 'package:code_editor/core/usecases/read_localstorage_usecase.dart';
import 'package:code_editor/core/usecases/write_localstorage_usecase.dart';
import 'package:code_editor/data/datasource/compiler_datasource.dart';
import 'package:code_editor/data/datasource/local_data_provider.dart';
import 'package:code_editor/data/repositories/compile_repository.dart';
import 'package:code_editor/data/repositories/local_storage_repository.dart';
import 'package:code_editor/domain/repositories/compiler_datasource_impl.dart';
import 'package:code_editor/domain/repositories/local_storage_repository_impl.dart';
import 'package:code_editor/domain/usecases/submit_compile_usecase.dart';
import 'package:code_editor/presenter/editor/provider/editor_provider.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final getIt = GetIt.instance;

setupMain() async {
  getIt.registerSingleton<SharedPreferences>(
      await SharedPreferences.getInstance());

  /// datasource
  getIt.registerSingleton<LocalDataProvider>(LocalDataProvider(getIt.get()));

  /// repositories
  getIt.registerSingleton<LocalStorageRepository>(
      LocalStorageRepositoryImpl(getIt.get()));

  /// useCases
  getIt.registerSingleton<ReadLocalStorageUseCase>(
      ReadLocalStorageUseCase(getIt.get()));
  getIt.registerSingleton<WriteLocalStorageUseCase>(
      WriteLocalStorageUseCase(getIt.get()));
}

void setupEditor() {
  /// datasource
  getIt.registerSingleton<CompileDatasource>(CompileDatasourceImpl());

  /// repositories
  getIt
      .registerSingleton<CompileRepository>(CompileRepositoryImpl(getIt.get()));

  /// useCases
  getIt.registerSingleton<SubmitCompileUseCase>(
      SubmitCompileUseCase(getIt.get()));

  /// providers
  getIt.registerSingleton<EditorProvider>(EditorProvider(getIt.get()));
}
