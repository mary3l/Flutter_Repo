// Purpose of card_model.dart

// This file contains the props to be used for the card's content

class CardModel {
  final String thumbnailUrl;
  final String id;
  final String albumId;
  final String title;
  final String url;

  CardModel(
      {required this.thumbnailUrl,
      required this.id,
      required this.albumId,
      required this.title,
      required this.url});

  CardModel.fromJson(Map<String, dynamic> json)
      : thumbnailUrl = json['thumbnailUrl'],
        id = json["id"],
        albumId = json["albumId"],
        title = json["title"],
        url = json["url"];
}
