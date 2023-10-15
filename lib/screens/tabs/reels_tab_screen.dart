import 'package:facebook_clone/data/user_data.dart';
import 'package:facebook_clone/utils/constants.dart';
import 'package:facebook_clone/widgets/reels_comment_section.dart';
import 'package:facebook_clone/widgets/reels_stacked_widgets.dart';
import 'package:facebook_clone/widgets/reels_top_user_action.dart';
import 'package:flutter/material.dart';

class ReelContentTab extends StatelessWidget {
  ReelContentTab({Key? key}) : super(key: key);

  final buildReelsVideoBackdrop = SizedBox(
    height: double.infinity,
    width: double.infinity,
    child: Image.network(
      errorBuilder: (context, _, st) {
        return Container();
      },
      userData.reels!.first.videoUrl,
      fit: BoxFit.cover,
    ),
  );

  final buildArrowWidget = const Padding(
    padding: EdgeInsets.symmetric(
      horizontal: defaultSpacer,
      vertical: defaultSpacer / 2,
    ),
    child: Icon(
      Icons.arrow_back,
      color: Colors.white,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        buildReelsVideoBackdrop,
        buildArrowWidget,
        const Positioned(
          top: 40,
          left: 0,
          right: 0,
          child: ReelsTopUserActionWidget(),
        ),
        Positioned(
          bottom: 16,
          child: ReelsCommentSection(
            userName: userData.name,
            userPhotoUrl: userData.profilePhotoUrl,
          ),
        ),
        Positioned(
          bottom: 20,
          right: 10,
          child: ReelsStackWidget(
            comments: userData.reels!.first.commentCount,
            likes: userData.reels!.first.likeCount,
            shares: userData.reels!.first.shareCount,
          ),
        ),
      ],
    );
  }
}
