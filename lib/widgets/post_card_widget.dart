import 'package:facebook_clone/utils/constants.dart';
import 'package:facebook_clone/widgets/user_avatar_widget.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class PostCardWidget extends StatelessWidget {
  final String postUrl;
  final String authorAvatar;
  final String userName;
  final int? postLikes;
  final int? postComments;
  final int? postShares;
  final String time;

  PostCardWidget({
    required this.postUrl,
    required this.authorAvatar,
    required this.userName,
    this.postLikes,
    this.postComments,
    this.postShares,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: defaultSpacer / 2),
      margin: const EdgeInsets.only(bottom: 8),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: CircleAvatar(
                    radius: 20,
                    child: PhotoAvatarWidget(photoUrl: authorAvatar),
                  ),
                ),
              ),
              spaceWidget(isFullSpace: false, isVerticalSpace: false),
              Expanded(
                flex: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          '$userName.',
                          style: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                          ),
                        ),
                        const SizedBox(width: 4),
                        const Text(
                          'Updated his profile',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: Colors.black26,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Picture ${time} ago',
                      style: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        color: Colors.black26,
                      ),
                    ),
                  ],
                ),
              ),
              spaceWidget(isFullSpace: false, isVerticalSpace: false),
              const Row(
                children: [
                  Icon(Icons.more_horiz, color: Colors.black26),
                  Icon(Icons.close, color: Colors.black26),
                ],
              ),
            ],
          ),
          const SizedBox(height: 5),
          SizedBox(
            width: double.infinity,
            child: Image.network(
              errorBuilder: (context, _, st) {
                return Container();
              },
              postUrl,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 7),
          Divider(
            color: Colors.black26,
            height: 1,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: defaultSpacer / 2,
              vertical: defaultSpacer,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      const Icon(
                        Icons.thumb_up_outlined,
                        color: Colors.black26,
                        size: 21,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        "$postLikes likes",
                        style: const TextStyle(color: Colors.black26),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      const Icon(
                        UniconsLine.comment,
                        color: Colors.black26,
                        size: 21,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        "$postComments comments",
                        style: const TextStyle(color: Colors.black26),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      const Icon(
                        UniconsLine.share,
                        color: Colors.black26,
                        size: 23,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        "$postShares shares",
                        style: const TextStyle(color: Colors.black26),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
