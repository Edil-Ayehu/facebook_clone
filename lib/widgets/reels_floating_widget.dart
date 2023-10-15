import 'package:facebook_clone/utils/constants.dart';
import 'package:flutter/material.dart';

class FloatingWidget extends StatelessWidget {
  final String? label;
  final IconData icon;

  FloatingWidget({this.label, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          bottom: label != null ? defaultSpacer : defaultSpacer / 2),
      child: Column(
        children: [
          Icon(icon, color: Colors.white),
          const SizedBox(height: 5),
          label != null
              ? Text(
                  label ?? '',
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                )
              : const Offstage(),
        ],
      ),
    );
  }
}
