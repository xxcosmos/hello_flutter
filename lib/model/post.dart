class Post {
  const Post({
    this.title,
    this.author,
    this.imageUrl,
  });
  final String title;
  final String author;
  final String imageUrl;
}

final List<Post> posts = [
  Post(
    title: 'hello',
    author: 'xiaoyuu',
    imageUrl: 'https://tva1.sinaimg.cn/mw690/006OBeunly1g3nzrcdlrhj30mj0f2tcu.jpg',
  ),
  Post(
    title: 'hi!',
    author: 'cosmos',
    imageUrl: 'http://tva1.sinaimg.cn/mw690/006OBeunly1g3nyy42hpog30cs076u14.gif'
  ),
];