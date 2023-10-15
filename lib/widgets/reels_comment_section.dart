import 'package:facebook_clone/utils/constants.dart';
import 'package:facebook_clone/widgets/user_avatar_widget.dart';
import 'package:flutter/material.dart';

class ReelsCommentSection extends StatelessWidget {
  final String userName;
  final String userPhotoUrl;

  ReelsCommentSection({
    required this.userName,
    required this.userPhotoUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: const EdgeInsets.symmetric(horizontal: defaultSpacer),
      child: Row(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(right: defaultSpacer / 2),
              child: CircleAvatar(
                radius: 18,
                child: PhotoAvatarWidget(photoUrl: userPhotoUrl),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      '$userName .  ',
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        print('Followed');
                      },
                      child: const Text(
                        'Follow',
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                const SizedBox(
                  width: 150,
                  height: 20,
                  child: TextField(
                    decoration: InputDecoration(
                      isDense: true,
                      hintText: 'Add a comment...',
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        borderSide: BorderSide(
                          color: Colors.white70,
                          width: 1.5,
                          style: BorderStyle.solid,
                        ),
                      ),
                    ),
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
