class Post{

  var id;

  Post({required this.id});
  Post.upd();

  Post.fromJson(Map<String, dynamic> json)
      :
        id = json['id'];

  Map<String, dynamic> toJson() => {
    'id' : id
  };
}