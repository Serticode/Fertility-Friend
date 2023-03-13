import 'package:fertility_friend/screens/article/widget/references.dart';
import 'package:fertility_friend/screens/blog/blog.dart';
import 'package:fertility_friend/theme/app_theme.dart';
import 'package:fertility_friend/utils/app_fade_animation.dart';
import 'package:fertility_friend/utils/app_screen_utils.dart';
import 'package:fertility_friend/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ArticlePage extends ConsumerWidget {
  final Widget child;
  const ArticlePage({super.key, required this.child});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(children: [
      //! DIVIDER
      Divider(
          thickness: 2.0.sp, height: 1.0.sp, color: const Color(0xFF8B8B8B)),

      //! BODY
      Expanded(
          child: Row(children: [
        //!PAGE NOTIFIER
        const Expanded(child: ArticleReaderPointTracker()),

        //! SPACER
        AppScreenUtils.horizontalSpaceSmall,

        VerticalDivider(
            width: 1.0.sp, thickness: 2.0.sp, color: const Color(0xFF8B8B8B)),

        //! SPACER
        AppScreenUtils.horizontalSpaceSmall,

        //! PAGE - MAIN CONTENT
        Expanded(
            flex: 5,
            child: Container(
                padding: AppScreenUtils.containerPadding,
                child: Column(children: [
                  //! SPACER
                  AppScreenUtils.verticalSpaceMedium,

                  //! TITLE
                  Row(children: [
                    //! DOT
                    Container(
                        height: 24.0.h,
                        width: 24.0.w,
                        decoration: const BoxDecoration(
                            color: AppColours.textBlack,
                            shape: BoxShape.circle)),

                    //! SPACER
                    AppScreenUtils.horizontalSpaceSmall,

                    Text(AppTexts.fertilityFriendNoHyphen,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: 18.0.sp,
                            color: AppColours.textBlack)),

                    //! SPACER
                    AppScreenUtils.horizontalSpaceSmall,

                    //! DOT
                    Container(
                        height: 4.0.h,
                        width: 4.0.w,
                        decoration: const BoxDecoration(
                            color: AppColours.textBlack,
                            shape: BoxShape.circle)),

                    //! SPACER
                    AppScreenUtils.horizontalSpaceSmall,

                    Text(AppTexts.date,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: 18.0.sp,
                            color: AppColours.blogTabGrey))
                  ]),

                  //! SPACER
                  AppScreenUtils.verticalSpaceMedium,

                  Expanded(child: child)
                ]))),

        //! SPACER
        AppScreenUtils.horizontalSpaceSmall,

        VerticalDivider(
            width: 1.0.sp, thickness: 2.0.sp, color: const Color(0xFF8B8B8B)),

        //! SPACER
        AppScreenUtils.horizontalSpaceSmall,

        //! REFERENCES
        Expanded(
            child: ValueListenableBuilder(
                valueListenable: selectedArticleValue,
                builder: (context, value, child) =>
                    selectedArticleValue.value == null
                        ? const References(listOfReferences: [])
                        : References(
                            listOfReferences: AppTexts.allReferences
                                .elementAt(selectedArticleValue.value!))))
      ]))
    ]);
  }
}

class ArticleReaderPointTracker extends ConsumerWidget {
  const ArticleReaderPointTracker({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
        children: AppTexts.articleTrackerTitle
            .map((title) => AppFadeAnimation(
                delay: AppTexts.articleTrackerTitle.indexOf(title) + 1 * 0.5,
                child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 44.0.h, horizontal: 42.0.w),
                    child: Row(children: [
                      Text(
                          "0${AppTexts.articleTrackerTitle.indexOf(title) + 1}   ",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 24.0.sp,
                                  color: AppColours.textBlack)),
                      Text("  $title",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 24.0.sp,
                                  color: AppColours.textBlack))
                    ]))))
            .toList());
  }
}
