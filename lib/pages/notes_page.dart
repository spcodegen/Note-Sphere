import 'package:flutter/material.dart';
import 'package:notes_sphere/utils/colors.dart';
import 'package:notes_sphere/utils/constants.dart';
import 'package:notes_sphere/utils/router.dart';
import 'package:notes_sphere/utils/text_styles.dart';

class NotesPage extends StatefulWidget {
  const NotesPage({super.key});

  @override
  State<NotesPage> createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            //GO TO THE HOMEPAGE
            AppRouter.router.go("/");
          },
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
      ),

      //floating action button
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(100),
          ),
          side: BorderSide(
            color: AppColors.kWhiteColor,
            width: 1.5,
          ),
        ),
        child: const Icon(
          Icons.add,
          color: AppColors.kWhiteColor,
          size: 30,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(
          AppConstants.kDefaultPadding,
        ),
        child: Column(
          children: [
            Text(
              "Notes",
              style: AppTextStyles.appTitle,
            ),
          ],
        ),
      ),
    );
  }
}
