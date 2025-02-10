import 'package:code_editor/core/params/submit_compile_params.dart';
import 'package:code_editor/core/resource/data_state.dart';
import 'package:code_editor/core/resource/my_colors.dart';
import 'package:code_editor/domain/entities/compile_entity.dart';
import 'package:code_editor/domain/usecases/submit_compile_usecase.dart';
import 'package:flutter/material.dart';
import 'package:highlight/languages/all.dart';
import 'package:flutter_code_editor/flutter_code_editor.dart';

class EditorProvider extends ChangeNotifier {
  SubmitCompileUseCase _submitCompileUseCase;

  CodeController controller = CodeController(
    text: '', // Initial code
    language: builtinLanguages['java'],
  );
  String? currentLanguage = 'java';

  EditorProvider(this._submitCompileUseCase) {
    /// onInit
  }

  setCurrentLanguage(String newName) {
    currentLanguage = newName;
    controller = CodeController(
      text: '', // Initial code
      language: builtinLanguages[newName],
    );
    notifyListeners();
  }

  compileClick(BuildContext context) async {
    DataState dataState = await _submitCompileUseCase(SubmitCompileParams(
        text: controller.text, language: currentLanguage.toString()));
    if (dataState is DataSuccess) {
      CompileEntity entity = dataState.data;
      showModalBottomSheet(
          builder: (context) {
            return Container(
              width: double.infinity,
              color: MyColors.backgroundDark,
              padding: const EdgeInsets.all(20),
              child: Text(entity.run.output),
            );
          },
          context: context);
    }
  }
}
