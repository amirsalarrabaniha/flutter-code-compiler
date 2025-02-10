class PaginationResponse<Item> {
  int currentPage;
  String? firstPageUrl;
  int? from;
  int? lastPage;
  String? lastPageUrl;
  String? nextPageUrl;
  List<PaginationLink> links;
  List<Item> data;
  String? path;
  int? perPage;
  String? prevPageUrl;
  int? to;
  int? total;

  PaginationResponse({
    required this.currentPage,
    required this.firstPageUrl,
    required this.from,
    required this.lastPage,
    required this.lastPageUrl,
    required this.links,
    required this.nextPageUrl,
    required this.path,
    required this.perPage,
    required this.prevPageUrl,
    required this.to,
    required this.total,
    required this.data,
  });

  factory PaginationResponse.fromJson(Map<String, dynamic> json,
          Function(Map<String, dynamic> value) builder) =>
      PaginationResponse(
        currentPage: json["current_page"],
        firstPageUrl: json["first_page_url"],
        from: json["from"],
        lastPage: json["last_page"],
        lastPageUrl: json["last_page_url"],
        links: List<PaginationLink>.from(
            json["links"].map((x) => PaginationLink.fromJson(x))),
        nextPageUrl: json["next_page_url"],
        path: json["path"],
        perPage: json["per_page"],
        prevPageUrl: json["prev_page_url"],
        to: json["to"],
        total: json["total"],
        data: List<Item>.from(json['data'].map((x) => builder(x))),
      );
}

class PaginationLink {
  String? url;
  String label;
  bool active;

  PaginationLink({
    required this.url,
    required this.label,
    required this.active,
  });

  factory PaginationLink.fromJson(Map<String, dynamic> json) => PaginationLink(
        url: json["url"],
        label: json["label"],
        active: json["active"],
      );

  Map<String, dynamic> toJson() => {
        "url": url,
        "label": label,
        "active": active,
      };
}
