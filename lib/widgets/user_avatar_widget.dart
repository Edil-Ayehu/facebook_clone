import 'package:flutter/material.dart';

class PhotoAvatarWidget extends StatelessWidget {
  final String photoUrl;
  final double? height;
  final double? width;

  const PhotoAvatarWidget({
    super.key,
    required this.photoUrl,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.network(
            errorBuilder: (context, _, st) {
              return const CircleAvatar(
                backgroundColor: Colors.white,
              );
            },
            photoUrl,
            fit: BoxFit.cover,
            height: height ?? 40,
            width: width ?? 40,
          ),
        ),
      ],
    );
  }
}

class StoryAvatarWidget extends StatelessWidget {
  final double width;
  final double height;
  final String storyPhotoUrl;
  final String profilePhotoUrl;
  final bool isViewed;

  const StoryAvatarWidget({
    super.key,
    required this.width,
    required this.height,
    required this.storyPhotoUrl,
    required this.profilePhotoUrl,
    required this.isViewed,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 55,
          width: 55,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border:
                Border.all(color: Colors.blueAccent, width: isViewed ? 0 : 3),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.network(
              errorBuilder: (context, _, st) {
                return const CircleAvatar(
                  backgroundColor: Colors.white,
                );
              },
              storyPhotoUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          right: 3,
          bottom: 8,
          child: Container(
            height: 22,
            width: 22,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: Colors.white, width: 1),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(
                errorBuilder: (context, _, st) {
                  return const CircleAvatar(
                    backgroundColor: Colors.white,
                  );
                },
                profilePhotoUrl,
                width: 22,
                height: 22,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
