import 'package:deencastv2/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

import '../../utils/constants/color.dart';

class AudioPlayerMini extends StatelessWidget {
  final bool isActive;

  const AudioPlayerMini({super.key, this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: const EdgeInsets.all(16),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            // Scholar image if active, else placeholder icon
            isActive
                ? Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    DImages.isaAliPantami,
                    height: 48,
                    width: 48,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: DColors.emeraldGreen,
                    ),
                    child: const Icon(
                      Icons.mosque, // Replace with your logo asset
                      size: 14,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            )
                : const Icon(Icons.music_note, size: 48, color: Colors.grey),

            const SizedBox(width: 12),

            // Title + Date or "Inactive" message
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    isActive ? "Episode Title" : "No audio playing",
                    style: TextStyle(
                      color: isActive ? Colors.white : Colors.grey,
                      fontSize: 14,
                      fontWeight:
                      isActive ? FontWeight.w600 : FontWeight.normal,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  if (isActive) ...[
                    const SizedBox(height: 2),
                    const Text(
                      "Sep 21, 2025",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ],
              ),
            ),

            // Controls (disabled if inactive)
            IconButton(
              icon: Icon(Icons.play_arrow,
                  color: isActive ? Colors.white : Colors.grey),
              onPressed: isActive ? () {} : null,
            ),
            IconButton(
              icon: Icon(Icons.forward_30,
                  color: isActive ? Colors.white : Colors.grey),
              onPressed: isActive ? () {} : null,
            ),
          ],
        ),
      ),
    );
  }
}
