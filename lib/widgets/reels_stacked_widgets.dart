import 'package:facebook_clone/utils/constants.dart';
import 'package:facebook_clone/widgets/reels_floating_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class ReelsStackWidget extends StatelessWidget {
  final String comments;
  final String likes;
  final String shares;

  ReelsStackWidget({
    super.key,
    required this.comments,
    required this.likes,
    required this.shares,
  });

  @override
  Widget build(BuildContext context) {
    Widget buildVerticalStack(List<Widget> children) {
      return Container(
        margin: const EdgeInsets.only(right: defaultSpacer),
        child: Column(children: children),
      );
    }

    return buildVerticalStack([
      FloatingWidget(
        icon: Icons.thumb_up_outlined,
        label: "${likes}k",
      ),
      FloatingWidget(
        icon: UniconsLine.comment,
        label: "${comments}k",
      ),
      FloatingWidget(
        icon: UniconsLine.share,
        label: "${shares}k",
      ),
      FloatingWidget(
        icon: Icons.more_horiz,
      ),
      FloatingWidget(
        icon: Icons.person,
      ),
    ]);
  }
}
