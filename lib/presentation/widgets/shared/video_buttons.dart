import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:tiktok/config/helpers/human_formats.dart';
import 'package:tiktok/domain/entities/video_post.dart';

class VideoButtons extends StatelessWidget {
  const VideoButtons({super.key, required this.video});

  final VideoPost video;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CustomIconButton(
          value: video.likes,
          iconData: Icons.favorite,
          iconColor: Colors.red,
        ),
        _CustomIconButton(
          value: video.likes,
          iconData: Icons.comment,
          //iconColor: Colors.white,
        ),
        _CustomIconButton(
          value: video.likes,
          iconData: Icons.ios_share_outlined,
          //iconColor: Colors.white,
        ),
        _CustomIconButton(
          value: video.views,
          iconData: Icons.remove_red_eye_outlined,
          //iconColor: Colors.white,
        ),
        const SizedBox(
          height: 20,
        ),
        SpinPerfect(
          infinite: true,
          duration: const Duration(seconds: 5),
          child: _CustomIconButton(
            value: 0,
            iconData: Icons.play_circle_outlined,
            //iconColor: Colors.white,
          ),
        ),
      ],
    );
  }
}

class _CustomIconButton extends StatelessWidget {
  const _CustomIconButton(
      {super.key, required this.value, required this.iconData, iconColor})
      : color = iconColor ?? Colors.white;

  final int value;
  final IconData iconData;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      IconButton(onPressed: () {}, icon: Icon(iconData, color: color)),
      if (value > 0) Text(HumanFormats.humanReadbleNumber(value.toDouble()))
    ]);
  }
}
