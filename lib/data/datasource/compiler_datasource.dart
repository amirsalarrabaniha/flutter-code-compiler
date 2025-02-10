import 'dart:convert';

import 'package:code_editor/core/params/submit_compile_params.dart';
import 'package:http/http.dart' as http;

abstract class CompileDatasource {
  Future submitCompile(SubmitCompileParams params);
}

class CompileDatasourceImpl implements CompileDatasource {
  @override
  Future submitCompile(SubmitCompileParams params) async {
    final url = Uri.parse('https://emkc.org/api/v2/piston/execute');

    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(params.toJson()),
    );
    return response;
  }
}
