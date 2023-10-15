class User {
  final bool? isOnline;
  final String? userId;
  final String name;
  final String profilePhotoUrl;
  final List<Story>? stories;
  final List<Post>? posts;
  final List<Reels>? reels;

  const User({
    this.userId,
    this.isOnline,
    required this.name,
    required this.profilePhotoUrl,
    this.stories,
    this.posts,
    this.reels,
  });
}

class Story {
  final String? userId;
  final String storyPhoto;
  final String profilePhotoUrl;
  final bool viewed;

  const Story({
    this.userId,
    required this.storyPhoto,
    required this.profilePhotoUrl,
    this.viewed = true,
  });
}

class Post {
  final String authorName;
  final String authorAvatar;
  final String postPhoto;
  final String postContent;
  final int postLikeCount;
  final String time;
  final int postCommentCount;
  final int postShareCount;

  const Post({
    required this.time,
    required this.authorAvatar,
    required this.authorName,
    required this.postCommentCount,
    required this.postContent,
    required this.postLikeCount,
    required this.postPhoto,
    required this.postShareCount,
  });
}

class Reels {
  final String commentCount;
  final String likeCount;
  final String shareCount;
  final String videoUrl;

  const Reels({
    required this.commentCount,
    required this.likeCount,
    required this.shareCount,
    required this.videoUrl,
  });
}

const List<Story> stories = [
  Story(
    storyPhoto:
        'https://images.pexels.com/photos/1674752/pexels-photo-1674752.jpeg?auto=compress&cs=tinysrgb&w=600',
    profilePhotoUrl:
        'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=600',
  ),
  Story(
    storyPhoto:
        'https://images.pexels.com/photos/343717/pexels-photo-343717.jpeg?auto=compress&cs=tinysrgb&w=600',
    profilePhotoUrl:
        'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=600',
    viewed: false,
  ),
  Story(
    storyPhoto:
        'https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?auto=compress&cs=tinysrgb&w=600',
    profilePhotoUrl:
        'https://media.istockphoto.com/id/1309328823/photo/headshot-portrait-of-smiling-male-employee-in-office.jpg?b=1&s=612x612&w=0&k=20&c=eU56mZTN4ZXYDJ2SR2DFcQahxEnIl3CiqpP3SOQVbbI=',
  ),
  Story(
    storyPhoto:
        'https://images.pexels.com/photos/34534/people-peoples-homeless-male.jpg?auto=compress&cs=tinysrgb&w=600',
    profilePhotoUrl:
        'https://images.pexels.com/photos/3763188/pexels-photo-3763188.jpeg?auto=compress&cs=tinysrgb&w=600',
  ),
  Story(
    storyPhoto:
        'https://images.pexels.com/photos/3574678/pexels-photo-3574678.jpeg?auto=compress&cs=tinysrgb&w=600',
    profilePhotoUrl:
        'https://images.pexels.com/photos/3763152/pexels-photo-3763152.jpeg?auto=compress&cs=tinysrgb&w=600',
  ),
  Story(
    storyPhoto:
        'https://images.pexels.com/photos/633432/pexels-photo-633432.jpeg?auto=compress&cs=tinysrgb&w=600',
    profilePhotoUrl:
        'https://images.pexels.com/photos/64385/pexels-photo-64385.jpeg?auto=compress&cs=tinysrgb&w=600',
    viewed: false,
  ),
  Story(
    storyPhoto:
        'https://images.pexels.com/photos/1435517/pexels-photo-1435517.jpeg?auto=compress&cs=tinysrgb&w=600',
    profilePhotoUrl:
        'https://media.istockphoto.com/id/638756792/photo/beautiful-woman-posing-against-dark-background.jpg?b=1&s=612x612&w=0&k=20&c=cGcY2UH9Bts1JA1GYNK03IG_l-W4Zi8sABGZNBbWaE8=',
  ),
  Story(
    storyPhoto:
        'https://images.pexels.com/photos/2773977/pexels-photo-2773977.jpeg?auto=compress&cs=tinysrgb&w=600',
    profilePhotoUrl:
        'https://images.pexels.com/photos/2078149/pexels-photo-2078149.jpeg?auto=compress&cs=tinysrgb&w=600',
  ),
];

const real = Reels(
  commentCount: '55',
  likeCount: '14',
  shareCount: '2.3',
  videoUrl:
      'https://images.pexels.com/photos/2127667/pexels-photo-2127667.jpeg?auto=compress&cs=tinysrgb&w=600',
);

const List<Post> posts = [
  Post(
    time: '6hr',
    authorName: 'Edilayehu',
    authorAvatar:
        'https://images.pexels.com/photos/1370719/pexels-photo-1370719.jpeg?auto=compress&cs=tinysrgb&w=600',
    postPhoto:
        'https://images.pexels.com/photos/1035673/pexels-photo-1035673.jpeg?auto=compress&cs=tinysrgb&w=600',
    postContent: '',
    postCommentCount: 3,
    postLikeCount: 40,
    postShareCount: 4,
  ),
  Post(
    time: '11hr',
    authorName: 'Biruk Wondimu',
    authorAvatar:
        'https://images.pexels.com/photos/2726046/pexels-photo-2726046.jpeg?auto=compress&cs=tinysrgb&w=600',
    postPhoto:
        'https://images.pexels.com/photos/4065876/pexels-photo-4065876.jpeg?auto=compress&cs=tinysrgb&w=600',
    postContent: '',
    postCommentCount: 333,
    postLikeCount: 404,
    postShareCount: 14,
  ),
  Post(
    time: '4hr',
    authorName: 'Endrias',
    authorAvatar:
        'https://images.pexels.com/photos/3775087/pexels-photo-3775087.jpeg?auto=compress&cs=tinysrgb&w=600',
    postPhoto:
        'https://images.pexels.com/photos/1199590/pexels-photo-1199590.jpeg?auto=compress&cs=tinysrgb&w=600',
    postContent: '',
    postCommentCount: 39,
    postLikeCount: 140,
    postShareCount: 3,
  ),
  Post(
    time: '9hr',
    authorName: 'Mishame',
    authorAvatar:
        'https://images.pexels.com/photos/3760260/pexels-photo-3760260.jpeg?auto=compress&cs=tinysrgb&w=600',
    postPhoto:
        'https://images.pexels.com/photos/363905/pexels-photo-363905.jpeg?auto=compress&cs=tinysrgb&w=600',
    postContent: '',
    postCommentCount: 63,
    postLikeCount: 400,
    postShareCount: 44,
  ),
  Post(
    time: '1hr',
    authorName: 'Ediget',
    authorAvatar:
        'https://images.pexels.com/photos/3781543/pexels-photo-3781543.jpeg?auto=compress&cs=tinysrgb&w=600',
    postPhoto:
        'https://images.pexels.com/photos/3265546/pexels-photo-3265546.jpeg?auto=compress&cs=tinysrgb&w=600',
    postContent: '',
    postCommentCount: 3,
    postLikeCount: 40,
    postShareCount: 497,
  ),
  Post(
    time: '2hr',
    authorName: 'Lapiso',
    authorAvatar:
        'https://images.pexels.com/photos/1059180/pexels-photo-1059180.jpeg?auto=compress&cs=tinysrgb&w=600',
    postPhoto:
        'https://images.pexels.com/photos/3779448/pexels-photo-3779448.jpeg?auto=compress&cs=tinysrgb&w=600',
    postContent: '',
    postCommentCount: 3,
    postLikeCount: 470,
    postShareCount: 44,
  ),
  Post(
    time: '6hr',
    authorName: 'Betty',
    authorAvatar:
        'https://images.pexels.com/photos/4783536/pexels-photo-4783536.jpeg?auto=compress&cs=tinysrgb&w=600',
    postPhoto:
        'https://images.pexels.com/photos/1888614/pexels-photo-1888614.jpeg?auto=compress&cs=tinysrgb&w=600',
    postContent: '',
    postCommentCount: 203,
    postLikeCount: 409,
    postShareCount: 867,
  ),
  Post(
    time: '6hr',
    authorName: 'Hewan',
    authorAvatar:
        'https://images.pexels.com/photos/6389355/pexels-photo-6389355.jpeg?auto=compress&cs=tinysrgb&w=600',
    postPhoto:
        'https://images.pexels.com/photos/3772509/pexels-photo-3772509.jpeg?auto=compress&cs=tinysrgb&w=600',
    postContent: '',
    postCommentCount: 203,
    postLikeCount: 409,
    postShareCount: 867,
  ),
  Post(
    time: '6hr',
    authorName: 'Abel',
    authorAvatar:
        'https://images.pexels.com/photos/4855451/pexels-photo-4855451.jpeg?auto=compress&cs=tinysrgb&w=600',
    postPhoto:
        'https://images.pexels.com/photos/4584665/pexels-photo-4584665.jpeg?auto=compress&cs=tinysrgb&w=600',
    postContent: '',
    postCommentCount: 203,
    postLikeCount: 409,
    postShareCount: 867,
  ),
  Post(
    time: '6hr',
    authorName: 'Melat',
    authorAvatar:
        'https://images.pexels.com/photos/5055815/pexels-photo-5055815.jpeg?auto=compress&cs=tinysrgb&w=600',
    postPhoto:
        'https://images.pexels.com/photos/4855552/pexels-photo-4855552.jpeg?auto=compress&cs=tinysrgb&w=600',
    postContent: '',
    postCommentCount: 203,
    postLikeCount: 409,
    postShareCount: 867,
  ),
];

User get userData => const User(
      userId: '007',
      isOnline: true,
      name: 'Edilayehu',
      profilePhotoUrl:
          'https://media.istockphoto.com/id/92364774/photo/happy-child-in-a-swimming-pool.webp?b=1&s=612x612&w=0&k=20&c=ZY61dGDER6nXIBjm1ikJdTmffgXIfGY5h2ORXaaTlPY=',
      posts: posts,
      stories: stories,
      reels: [real],
    );
