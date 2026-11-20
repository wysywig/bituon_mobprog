import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bituon_mobprog/widgets/custom_text.dart';
import 'package:bituon_mobprog/widgets/post_image.dart';
import 'package:bituon_mobprog/widgets/post_action_button.dart';

class NewsFeedCard extends StatelessWidget {
  final String userName;
  final String postContent;
  final String date;
  final int? numOfLikes;
  final bool? hasImage;

  const NewsFeedCard({
    super.key,
    required this.userName,
    required this.postContent,
    required this.date,
    this.numOfLikes,
    this.hasImage,
  });

  @override
  Widget build(BuildContext context) {
    final double screenUtil10 = ScreenUtil().setSp(10);
    final double screenUtil15 = ScreenUtil().setWidth(15);
    final double screenUtilFontUserNameSize = ScreenUtil().setSp(15);
    final double screenUtilIconSize = ScreenUtil().setSp(15);

    return Card(
      margin: EdgeInsets.all(screenUtil15),
      child: Padding(
        padding: EdgeInsets.all(screenUtil15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // User Info
            // User Info
Row(
  children: [
    const CircleAvatar(
      radius: 20,
      backgroundImage: AssetImage(
        'assets/images/profile.jpg',
      ),
    ),

    SizedBox(width: screenUtil10),

    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: userName,
          fontSize: screenUtilFontUserNameSize,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),

        Row(
          children: [
            CustomText(
              text: date,
              fontSize: ScreenUtil().setSp(12),
              color: Colors.grey,
            ),

            SizedBox(
              width: ScreenUtil().setWidth(3),
            ),

            Icon(
              Icons.public,
              color: Colors.grey,
              size: screenUtilIconSize,
            ),
          ],
        ),
      ],
    ),
  ],
),

            SizedBox(height: ScreenUtil().setHeight(5)),

            // Post Content
            CustomText(
              text: postContent,
              fontSize: ScreenUtil().setSp(12),
              color: Colors.black,
            ),

            SizedBox(height: ScreenUtil().setHeight(5)),

           if (hasImage == true)
            const PostImage(
            imagePath: 'assets/images/iron_man.jpg',
             ),

            const SizedBox(height: 10),

Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Row(
      children: [
        const Icon(
          Icons.thumb_up,
          color: Colors.blue,
          size: 18,
        ),
        const SizedBox(width: 5),
        Text('${numOfLikes ?? 0}'),
      ],
    ),
    const Text(
      '42 Comments · 5 Shares',
    ),
  ],
),

const SizedBox(height: 10),

            // Action Buttons
           const Divider(),

Row(
  children: [
    PostActionButton(
      icon: Icons.thumb_up_alt_outlined,
      text: 'Like',
      onPressed: () {},
    ),

    PostActionButton(
      icon: Icons.comment_outlined,
      text: 'Comment',
      onPressed: () {},
    ),

    PostActionButton(
      icon: Icons.share_outlined,
      text: 'Share',
      onPressed: () {},
    ),
  ],
),

const Divider(),



            // Comment Box
            Row(
  children: [
    const CircleAvatar(
      radius: 12,
      backgroundImage: AssetImage(
        'assets/images/profile.jpg',
      ),
    ),

    Expanded(
      child: Container(
        margin: EdgeInsets.only(
          left: ScreenUtil().setWidth(8),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: ScreenUtil().setWidth(12),
          vertical: ScreenUtil().setHeight(8),
        ),
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(20),
        ),
        child: const CustomText(
          text: 'Write a comment...',
          fontSize: 11,
          color: Colors.grey,
        ),
      ),
    ),
  ],
),

            SizedBox(height: ScreenUtil().setHeight(10)),

            // Sample Comment
            CustomText(
              text: 'Viva all men',
              fontSize: ScreenUtil().setSp(12),
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}