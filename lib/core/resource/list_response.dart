class ListResponse<Item> {
  List<Item> records;

  ListResponse({
    required this.records,
  });

  factory ListResponse.fromJson(Map<String, dynamic> json,
          Function(Map<String, dynamic> value) builder) =>
      ListResponse(
        records: List<Item>.from(json['records'].map((x) => builder(x))),
      );
}
