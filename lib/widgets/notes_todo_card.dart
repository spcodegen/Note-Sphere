import 'package:flutter/material.dart';
import 'package:notes_sphere/utils/colors.dart';
import 'package:notes_sphere/utils/text_styles.dart';

class NotesTodoCard extends StatefulWidget {
  final String title;
  final String description;
  final IconData icon;

  const NotesTodoCard({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
  });

  @override
  State<NotesTodoCard> createState() => _NotesTodoCardState();
}

class _NotesTodoCardState extends State<NotesTodoCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.45,
      decoration: BoxDecoration(
        color: AppColors.kCardColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 20,
        ),
        child: Column(
          children: [
            Icon(
              widget.icon,
              size: 40,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              widget.title,
              style: AppTextStyles.appDescriptionStyle,
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              widget.description,
              style: AppTextStyles.appDescriptionSmallStyle.copyWith(
                color: AppColors.kWhiteColor.withOpacity(0.5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
