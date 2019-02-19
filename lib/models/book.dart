class Images {
  final String small;
  final String medium;
  final String large;

  Images({this.small, this.medium, this.large});
}

class VolumeInfo {
  final String title;
  final String subtitle;
  final String description;
  final Images imageLinks;

  VolumeInfo({this.title, this.subtitle, this.description, this.imageLinks});
}

class Book {
  final String kind;
  final String id;
  final String etag;
  final String selfLink;
  final VolumeInfo volumeInfo;

  Book({this.id, this.kind, this.etag, this.selfLink, this.volumeInfo});
}
