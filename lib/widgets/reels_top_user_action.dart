import 'package:facebook_clone/data/user_data.dart';
import 'package:facebook_clone/utils/constants.dart';
import 'package:facebook_clone/widgets/user_avatar_widget.dart';
import 'package:flutter/material.dart';

class ReelsTopUserActionWidget extends StatelessWidget {
  const ReelsTopUserActionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Stack(
          children: [
            Container(
              margin: horizontalSpacing,
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(width: 2, color: Colors.white),
              ),
              child: const Center(
                child: Icon(
                  Icons.movie,
                  color: Colors.orange,
                ),
              ),
            ),
            const Positioned(
              bottom: 0,
              right: 10,
              child: Icon(
                Icons.add_circle,
                color: Colors.white,
                size: 19,
              ),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(right: defaultSpacer),
          child: Row(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: defaultSpacer),
                child: Icon(Icons.search, color: Colors.white),
              ),
              PhotoAvatarWidget(photoUrl: userData.profilePhotoUrl),
            ],
          ),
        ),
      ],
    );
  }
}
