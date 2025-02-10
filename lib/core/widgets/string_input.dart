import 'package:code_editor/core/resource/my_colors.dart';
import 'package:code_editor/core/resource/typography.dart';
import 'package:code_editor/core/widgets/clickable_container.dart';
import 'package:code_editor/core/widgets/input.dart';
import 'package:code_editor/routes/routes.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';

class StringInput extends StatelessWidget {
  List<String> items;
  String? current;
  String? title, errorMessage;
  Function(String current)? onPressed;
  String defaultTitle;
  bool isSearch, isSpacer;
  double? height, width;

  StringInput(
      {Key? key,
      required this.items,
      this.current,
      this.title,
      this.onPressed,
      this.width,
      this.height = 48,
      this.isSearch = true,
      this.errorMessage,
      this.isSpacer = false,
      this.defaultTitle = ''})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null)
          Padding(
            padding: const EdgeInsets.only(right: 10, bottom: 10),
            child: Text(
              title ?? '',
            ),
          ),
        ClickableContainer(
          onTap: () {
            // context.go();
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => InputSelectPage(items, (s) {
                      // onBuildId(items[index]);
                      // onPressed!();
                      onPressed!(s);
                      Navigator.pop(context);
                    })));
          },
          child: Text(
            current != null ? current.toString() : defaultTitle,
            style: Text700Style.h5.copyWith(color: MyColors.white),
          ),
        ),
        if (errorMessage != null)
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              errorMessage!,
            ),
          ),
      ],
    );
  }
}

class InputSelectPage extends StatefulWidget {
  Function(String current)? onPressed;
  List<String> items;

  InputSelectPage(this.items, this.onPressed, {super.key});

  @override
  State<InputSelectPage> createState() => _InputSelectPageState();
}

class _InputSelectPageState extends State<InputSelectPage> {
  List<String> searchItems = [];

  @override
  void initState() {
    super.initState();
    searchItems = widget.items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Input(
                      hint: 'search language',
                      onChanged: (s) {
                        searchItems =
                            widget.items.where((e) => e.contains(s)).toList();
                        setState(() {});
                      },
                    ),
                  ),
                  const SizedBox(width: 10),
                  IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(
                        Iconsax.close_circle,
                        size: 25,
                      ))
                ],
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.separated(
                itemCount: searchItems.length,
                itemBuilder: (BuildContext context, int index) {
                  return ClickableContainer(
                      onTap: () => widget.onPressed!(searchItems[index]),
                      padding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      child: Text(
                        searchItems[index],
                        style: Text700Style.h5.copyWith(color: MyColors.white),
                      ));
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
