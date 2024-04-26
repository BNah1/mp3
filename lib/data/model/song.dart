class Song {
  Song({
    required this.id,
    required this.title,
    required this.album,
    required this.artist,
    required this.source,
    required this.image,
    required this.duration,
  });

  factory Song.fromJson(Map<String, dynamic> map)
  {
    return Song(
      id: map['id'],
      title: map['title'],
      album: map['album'],
      source: map['source'],
      artist: map['artist'],
      image: map['image'],
      duration: map['duration'],
    );
  }

  String id;
  String title;
  String album;
  String source;
  String artist;
  String image;
  int duration;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Song && runtimeType == other.runtimeType && id == other.id;

  @override
  int get hashCode => id.hashCode;
}
