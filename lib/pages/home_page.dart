import 'package:flutter/material.dart';
import 'package:notes_sphere/utils/constants.dart';
import 'package:notes_sphere/utils/text_styles.dart';
import 'package:notes_sphere/widgets/notes_todo_card.dart';
import 'package:notes_sphere/widgets/progress_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "NoteSphere",
          style: AppTextStyles.appTitle,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            SizedBox(
              height: AppConstants.kDefaultPadding,
            ),
            ProgressCard(
              completedTasks: 5,
              totalTasks: 5,
            ),
            SizedBox(
              height: AppConstants.kDefaultPadding * 1.5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                NotesTodoCard(
                  icon: Icons.bookmark_add_outlined,
                  title: "Notes",
                  description: "3 Notes",
                ),
                NotesTodoCard(
                  icon: Icons.today_outlined,
                  title: "To-Do List",
                  description: "3 Tasks",
                ),
              ],
            ),
            SizedBox(
              height: AppConstants.kDefaultPadding * 1.5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Today's Progress",
                  style: AppTextStyles.appSubTitle,
                ),
                Text(
                  "See All",
                  style: AppTextStyles.appButton,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
