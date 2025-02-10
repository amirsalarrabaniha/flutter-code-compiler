import 'dart:convert';

import 'package:code_editor/core/params/submit_compile_params.dart';
import 'package:code_editor/core/resource/data_state.dart';
import 'package:code_editor/data/datasource/compiler_datasource.dart';
import 'package:code_editor/data/repositories/compile_repository.dart';
import 'package:code_editor/domain/entities/compile_entity.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class CompileRepositoryImpl implements CompileRepository {
  CompileDatasource datasource;

  CompileRepositoryImpl(this.datasource);

  @override
  Future<DataState<CompileEntity>> submitCompile(
      SubmitCompileParams params) async {
    Response response = await datasource.submitCompile(params);
    if (response.statusCode == 200) {
      return DataSuccess(CompileEntity.fromJson(jsonDecode(response.body)));
    } else {
      return DataFailed(response.body);
    }
  }
}
