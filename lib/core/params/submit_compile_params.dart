class SubmitCompileParams {
  String text, language;

  SubmitCompileParams({required this.text, required this.language});

  toJson() => {
        'language': language,
        'version': '*', // use default/latest version
        'files': [
          {'name': 'main', 'content': text}
        ],
      };
}
