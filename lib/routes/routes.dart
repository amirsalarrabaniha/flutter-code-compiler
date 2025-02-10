// GoRouter configuration
import 'package:code_editor/presenter/editor/page/editor_page.dart';
import 'package:code_editor/routes/pages.dart';
import 'package:go_router/go_router.dart';

class Routes {
  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: Pages.editorPage,
        builder: (context, state) => EditorPage(),
      ),
    ],
  );
}
