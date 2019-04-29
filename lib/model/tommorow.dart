class tommorow {
  const tommorow({
    this.title,
    this.author,
    this.imageUrl,
  });

  final String title;
  final String author;
  final String imageUrl;
  
}

final List<tommorow> pos = [
    tommorow(
      title: 'Ann',
      author: 'Monica',
      imageUrl: 'http://127.0.0.1/111.jpeg',
    ),
    tommorow(
      title: 'Ann2',
      author: 'Monica2',
      imageUrl: 'http://127.0.0.1/112.jpeg', 
    ),
    tommorow(
      title: 'Ann3',
      author: 'Monica3',
      imageUrl: 'http://127.0.0.1/113.jpeg', 
    )
  ];