class RepoModel {
  final int id;
  final String fullName;
  final String name;
  final String description;
  final String url;

  RepoModel({
    required this.id,
    required this.fullName,
    required this.description,
    required this.url,
    required this.name,
  });

  factory RepoModel.fromJson(Map<String, dynamic> json) {
    return RepoModel(
      id: json['id'],
      name: json['name'],
      fullName: json['full_name'],
      description: json['description'] ?? 'No description available',
      url: json['html_url'],
    );
  }
}
