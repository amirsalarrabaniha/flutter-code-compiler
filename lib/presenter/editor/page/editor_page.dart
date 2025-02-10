import 'package:code_editor/core/resource/all.dart';
import 'package:code_editor/core/resource/my_colors.dart';
import 'package:code_editor/core/widgets/string_input.dart';
import 'package:code_editor/presenter/editor/provider/editor_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_code_editor/flutter_code_editor.dart';
import 'package:flutter_highlight/themes/atelier-dune-dark.dart';
import 'package:iconsax/iconsax.dart';

import 'package:provider/provider.dart';

class EditorPage extends StatelessWidget {
  EditorPage({super.key});

  @override
  Widget build(BuildContext context) {
    EditorProvider provider =
        Provider.of<EditorProvider>(context, listen: false);
    return Scaffold(
      body: SafeArea(
        child: Consumer<EditorProvider>(builder: (context, p, _) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    const Icon(
                      Iconsax.language_square,
                      size: 25,
                    ),
                    const SizedBox(width: 10),
                    StringInput(
                      items: builtinLanguages.keys.map((e) => e).toList(),
                      onPressed: (c) {
                        provider.setCurrentLanguage(c);
                      },
                      current: p.currentLanguage,
                    ),
                    // Container(
                    //   width: 1,
                    //   height: 15,
                    //   color: MyColors.border,
                    //   margin: EdgeInsets.symmetric(horizontal: 20),
                    // ),
                    // const Icon(
                    //   Iconsax.monitor,
                    //   size: 25,
                    // ),
                    // const SizedBox(width: 10),
                    // Consumer<EditorProvider>(builder: (context, p, _) {
                    //   return StringInput(
                    //     items: builtinLanguages.keys.map((e) => e).toList(),
                    //     onBuildTitle: (String current) {
                    //       return current;
                    //     },
                    //     onBuildId: (String current) {
                    //       return current;
                    //     },
                    //     onPressed: (c) {
                    //       provider.setCurrentLanguage(c);
                    //     },
                    //     current: p.currentLanguage,
                    //   );
                    // }),
                    const Spacer(),
                    IconButton(
                        onPressed: () => provider.compileClick(context),
                        icon: const Icon(
                          Iconsax.tick_square,
                          size: 30,
                        )),
                  ],
                ),
              ),
              Expanded(
                child: CodeTheme(
                  data: CodeThemeData(styles: atelierDuneDarkTheme),
                  child: CodeField(
                    controller: provider.controller,
                    expands: true,
                  ),
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
