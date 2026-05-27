// like_button.dart

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LikeButton extends StatelessWidget {
  final ValueNotifier<bool> isLiked;

  final ValueNotifier<int> likeCount;

  /// CUSTOM COLORS
  final Color likedColor;

  final Color unLikedColor;

  /// CUSTOM ICONS
  final IconData likedIcon;

  final IconData unLikedIcon;

  /// ICON SIZE
  final double iconSize;

  /// HAPTIC
  final bool enableHapticFeedback;

  /// TEXT STYLE
  final TextStyle? countStyle;

  const LikeButton({
    super.key,

    required this.isLiked,

    required this.likeCount,

    /// DEFAULT COLORS
    this.likedColor = Colors.red,

    this.unLikedColor = Colors.grey,

    /// DEFAULT ICONS
    this.likedIcon = Icons.favorite,

    this.unLikedIcon = Icons.favorite_border,

    this.iconSize = 32,

    this.enableHapticFeedback = true,

    this.countStyle,
  });

  /// TOGGLE
  void toggleLike() {
    isLiked.value = !isLiked.value;

    if (isLiked.value) {
      likeCount.value++;

      if (enableHapticFeedback) {
        HapticFeedback.lightImpact();
      }
    } else {
      likeCount.value--;
    }
  }

  /// FORMAT COUNT
  String formatCount(int count) {
    if (count >= 1000000) {
      return '${(count / 1000000).toStringAsFixed(1)}M';
    } else if (count >= 1000) {
      return '${(count / 1000).toStringAsFixed(1)}K';
    }

    return count.toString();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggleLike,

      child: ValueListenableBuilder(
        valueListenable: isLiked,

        builder: (_, liked, __) {
          return Row(
            mainAxisSize: MainAxisSize.min,

            children: [
              /// ICON
              AnimatedScale(
                scale: liked ? 1.2 : 1,

                duration: const Duration(milliseconds: 200),

                child: Icon(
                  liked ? likedIcon : unLikedIcon,

                  color: liked ? likedColor : unLikedColor,

                  size: iconSize,
                ),
              ),

              const SizedBox(width: 8),

              /// COUNT
              ValueListenableBuilder(
                valueListenable: likeCount,

                builder: (_, count, __) {
                  return Text(
                    formatCount(count),

                    style:
                        countStyle ??
                        const TextStyle(
                          fontSize: 16,

                          fontWeight: FontWeight.bold,
                        ),
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
