import 'package:facebook_clone/data/user_data.dart';
import 'package:facebook_clone/utils/constants.dart';
import 'package:facebook_clone/widgets/post_card_widget.dart';
import 'package:facebook_clone/widgets/user_avatar_widget.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class FeedContentTab extends StatelessWidget {
  const FeedContentTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          spaceWidget(isFullSpace: true, isVerticalSpace: true),
          Row(
            children: [
              spaceWidget(isFullSpace: true, isVerticalSpace: false),
              PhotoAvatarWidget(
                photoUrl: userData.profilePhotoUrl,
                height: 30,
                width: 30,
              ),
              spaceWidget(isFullSpace: true, isVerticalSpace: false),
              const Expanded(
                child: SizedBox(
                  height: 34,
                  child: TextField(
                    style: TextStyle(fontSize: 11),
                    decoration: InputDecoration(
                      suffixIcon:
                          Icon(Icons.photo_library, color: Colors.green),
                      isDense: true,
                      hintText: 'What\'s on your mind?',
                      hintStyle: TextStyle(
                        color: Colors.black54,
                        fontSize: 10,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        borderSide: BorderSide(
                          color: Colors.black26,
                          width: 1,
                          style: BorderStyle.solid,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        borderSide: BorderSide(
                          color: Colors.black26,
                          width: 1,
                          style: BorderStyle.solid,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              spaceWidget(isFullSpace: true, isVerticalSpace: false),
              const Padding(
                padding: EdgeInsets.only(right: defaultSpacer),
                child: Icon(
                  UniconsLine.facebook_messenger,
                  color: Colors.blueAccent,
                ),
              ),
            ],
          ),
          spaceWidget(isFullSpace: true, isVerticalSpace: true),
          SizedBox(
            height: 55,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                spaceWidget(isFullSpace: true, isVerticalSpace: false),
                ...?userData.stories?.map(
                  (story) => Padding(
                    padding: const EdgeInsets.only(right: defaultSpacer / 2),
                    child: StoryAvatarWidget(
                      width: 55,
                      height: 55,
                      storyPhotoUrl: story.storyPhoto,
                      profilePhotoUrl: story.profilePhotoUrl,
                      isViewed: story.viewed,
                    ),
                  ),
                ),
              ],
            ),
          ),
          spaceWidget(isFullSpace: true, isVerticalSpace: true),
          const SizedBox(height: 8),
          ...?userData.posts?.map(
            (e) => PostCardWidget(
              postUrl: e.postPhoto,
              authorAvatar: e.authorAvatar,
              userName: e.authorName,
              time: e.time,
              postLikes: e.postLikeCount,
              postComments: e.postCommentCount,
              postShares: e.postShareCount,
            ),
          ),
        ],
      ),
    );
  }
}
