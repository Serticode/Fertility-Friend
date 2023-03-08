import 'package:fertility_friend/theme/app_theme.dart';
import 'package:fertility_friend/utils/app_screen_utils.dart';
import 'package:fertility_friend/utils/constants.dart';
import 'package:fertility_friend/widgets/app_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class Footer extends ConsumerWidget {
  const Footer({super.key});

  static const List<Color> pageIconColours = [
    Color(0xFFC9FDE6),
    Color(0xFFFFD0A0),
    Color(0xFFFFD0EB)
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
        height: 720.0.h,
        decoration: const BoxDecoration(color: AppColours.lightPurpleBG),
        padding: AppScreenUtils.appGeneralPadding,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          //! SPACER
          AppScreenUtils.verticalSpaceLarge,
          AppScreenUtils.verticalSpaceMedium,

          //! CONTENT
          Expanded(
              child: Row(children: [
            //! CONTACT AND PHONE NUMBER
            const Expanded(child: ContactAndPhoneNumber()),

            //! SPACER
            AppScreenUtils.horizontalSpaceMedium,

            //! LINKS
            Expanded(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                  //! COMPANY
                  LinksWidget(
                      title: AppTexts.links[0], sublinks: AppTexts.companyList),

                  //! SPACER
                  const Spacer(),

                  //! LEGAL
                  LinksWidget(
                      title: AppTexts.links[1], sublinks: AppTexts.legalList),

                  //! SPACER
                  const Spacer(),

                  //! SUPPORT
                  LinksWidget(
                      title: AppTexts.links[2], sublinks: AppTexts.supportList)
                ])),

            //! SPACER
            AppScreenUtils.horizontalSpaceMedium,

            //! SEARCH AND SUBSCRIBE TO OUR NEWS LETTER
            const Expanded(child: SubScribeToOurNewsLetter())
          ])),

          //! SPACER
          AppScreenUtils.verticalSpaceMedium,

          //! TEXT
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(AppTexts.copyRight,
                textAlign: TextAlign.justify,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 28.0.sp,
                    fontWeight: FontWeight.w400,
                    height: 4.0.sp,
                    color: AppColours.textBlack80)),

            //! SPACER
            const Spacer(),

            //! DESIGNED BY
            Text(AppTexts.designedBy,
                textAlign: TextAlign.justify,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 28.0.sp,
                    fontWeight: FontWeight.w400,
                    height: 4.0.sp,
                    color: AppColours.textBlack80)),

            //! SPACER
            AppScreenUtils.horizontalSpaceMedium,

            //! DESIGNED BY
            Text(AppTexts.developedBy,
                textAlign: TextAlign.justify,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 28.0.sp,
                    fontWeight: FontWeight.w400,
                    height: 4.0.sp,
                    color: AppColours.textBlack80))
          ]),

          //! SPACER
          AppScreenUtils.verticalSpaceMedium,
          AppScreenUtils.verticalSpaceSmall
        ]));
  }
}

//!
//!
//! CONTACT AND PHONE NUMBER
class ContactAndPhoneNumber extends ConsumerWidget {
  const ContactAndPhoneNumber({super.key});

  static const List footerSMIcons = [
    PhosphorIcons.linkedinLogoFill,
    PhosphorIcons.twitterLogoFill,
    PhosphorIcons.instagramLogo,
    PhosphorIcons.facebookLogoFill
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      //! FERTILITY FRIEND
      Text(AppTexts.fertilityFriendNoHyphen,
          textAlign: TextAlign.justify,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              fontSize: 40.0.sp,
              fontWeight: FontWeight.w500,
              color: AppColours.deepPurple)),

      //! SPACER
      AppScreenUtils.verticalSpaceMedium,

      //! REPRODUCTIVE HEALTH COMPANION
      Text(AppTexts.reproductiveHealthCompanion,
          textAlign: TextAlign.justify,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontSize: 28.0.sp,
              fontWeight: FontWeight.w300,
              color: AppColours.textBlack80)),

      //! SPACER
      AppScreenUtils.verticalSpaceLarge,

      //! ICONS
      Row(
          children: footerSMIcons
              .map((icon) => Container(
                  margin: EdgeInsets.only(right: 12.0.w),
                  height: 100.0.h,
                  width: 60.0.w,
                  decoration: BoxDecoration(
                      color: AppColours.white,
                      borderRadius: BorderRadius.circular(8.0.r),
                      border: Border.all(
                          width: 1.5.sp,
                          color: AppColours.textBlack80.withOpacity(0.45))),
                  child: Center(
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(icon,
                              size: 36.0.sp, color: AppColours.buttonBlack)))))
              .toList()),

      //! SPACER
      AppScreenUtils.verticalSpaceLarge,

      //! MAIL
      Text(AppTexts.email,
          textAlign: TextAlign.justify,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
              fontSize: 24.0.sp,
              fontWeight: FontWeight.w300,
              color: AppColours.textBlack80)),

      //! SPACER
      AppScreenUtils.verticalSpaceMedium,

      //! PHONE NUMBER
      Text(AppTexts.phoneNumber,
          textAlign: TextAlign.justify,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
              fontSize: 24.0.sp,
              fontWeight: FontWeight.w300,
              color: AppColours.textBlack80))
    ]);
  }
}

//! LINK WIDGET
class LinksWidget extends ConsumerWidget {
  final String title;
  final List<String> sublinks;
  const LinksWidget({super.key, required this.sublinks, required this.title});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      //! TITLE
      Text(title,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              fontSize: 40.0.sp,
              fontWeight: FontWeight.w500,
              color: AppColours.deepPurple)),

      //! SPACER
      AppScreenUtils.verticalSpaceMedium,

      //! SUB LINKS
      ...sublinks.map((link) => Padding(
          padding: EdgeInsets.symmetric(vertical: 12.5.h),
          child: InkWell(
              child: Text(link,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontSize: 32.0.sp,
                      fontWeight: FontWeight.w300,
                      color: AppColours.textBlack80)))))
    ]);
  }
}

//! SUBSCRIBE TO OUR NEWS LETTER
class SubScribeToOurNewsLetter extends ConsumerWidget {
  const SubScribeToOurNewsLetter({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Transform.scale(
        scale: 0.90,
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          //! TITLE
          Text(AppTexts.subscribeToOurNewsLetter,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: 32.0.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColours.textBlack)),

          //! SPACER
          AppScreenUtils.verticalSpaceMedium,

          Row(children: [
            Expanded(
                child: TextFormField(
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 24.0.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColours.textBlack),
                    decoration: InputDecoration(
                        hintText: "user@email.com",
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 6.0.h, horizontal: 12.0.w),
                        hintStyle: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(
                                fontSize: 26.0.sp,
                                fontWeight: FontWeight.w300,
                                color: AppColours.textBlack80),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(8.0.r)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(8.0.r)),
                        filled: true,
                        fillColor: AppColours.white))),

            //! BUTTON
            AppElevatedButton(
                onPressed: () {},
                buttonName: AppTexts.subscribe,
                width: 182.0.w,
                isTransparent: false)
          ])
        ]));
  }
}
