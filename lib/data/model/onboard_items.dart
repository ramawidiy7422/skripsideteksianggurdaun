// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class OnBoardItems {
  final String lottie;
  final String title;
  final String shortDescription;

  OnBoardItems({
    required this.lottie,
    required this.title,
    required this.shortDescription,
  });

  OnBoardItems copyWith({
    String? lottie,
    String? title,
    String? shortDescription,
  }) {
    return OnBoardItems(
      lottie: lottie ?? this.lottie,
      title: title ?? this.title,
      shortDescription: shortDescription ?? this.shortDescription,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lottie': lottie,
      'title': title,
      'shortDescription': shortDescription,
    };
  }

  factory OnBoardItems.fromMap(Map<String, dynamic> map) {
    return OnBoardItems(
      lottie: map['lottie'] as String,
      title: map['title'] as String,
      shortDescription: map['shortDescription'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory OnBoardItems.fromJson(String source) =>
      OnBoardItems.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'OnBoardItems(lottie: $lottie, title: $title, shortDescription: $shortDescription)';

  @override
  bool operator ==(covariant OnBoardItems other) {
    if (identical(this, other)) return true;

    return other.lottie == lottie &&
        other.title == title &&
        other.shortDescription == shortDescription;
  }

  @override
  int get hashCode => lottie.hashCode ^ title.hashCode ^ shortDescription.hashCode;
}