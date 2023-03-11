// ignore_for_file: deprecated_member_use
import 'package:fertility_friend/screens/article/cervical_cancer.dart';
import 'package:fertility_friend/screens/article/endometriosis.dart';
import 'package:fertility_friend/screens/landing_page/widget/footer.dart';
import 'package:fertility_friend/theme/app_theme.dart';
import 'package:fertility_friend/utils/app_fade_animation.dart';
import 'package:fertility_friend/utils/app_screen_utils.dart';
import 'package:fertility_friend/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

//! ARTICLES DISPLAY VALUE
final ValueNotifier<int?> selectedArticleValue = ValueNotifier(null);

class BlogPage extends ConsumerStatefulWidget {
  const BlogPage({super.key});

  @override
  ConsumerState<BlogPage> createState() => _BlogPageState();
}

class _BlogPageState extends ConsumerState<BlogPage>
    with TickerProviderStateMixin {
  late TabController _tabController;
  static const List<String> _tabs = ["Articles", "Videos", "Collaborations"];
  static const List<String> _tabsIcons = [
    "lib/assets/icons/article.svg",
    "lib/assets/icons/video.svg",
    "lib/assets/icons/collab.svg"
  ];

  static final ValueNotifier<int> _currentTabIndex = ValueNotifier(0);

  //! ARTICLES LIST
  static final ValueNotifier<List<Widget>> _articlesPage = ValueNotifier([
    const Endometriosis(),
    const PcosPage(),
    const Fibroid(),
    const CervicalCancerArticle(),
    const OvarianCist(),
    const PIDPage()
  ]);

  final List<Map> myProducts =
      List.generate(6, (index) => {"id": index, "name": "Product $index"})
          .toList();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedArticleValue,
      builder: (context, value, child) => selectedArticleValue.value != null
          ? _articlesPage.value.elementAt(selectedArticleValue.value!)
          : SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(children: [
                //! SPACER
                AppScreenUtils.verticalSpaceLarge,
                //! SPACER
                AppScreenUtils.verticalSpaceLarge,

                //! TITLE
                AppFadeAnimation(
                    delay: 2.6,
                    child: Text(AppTexts.ultimateReproductiveCompanion,
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontSize: 65.0.sp, color: AppColours.black))),

                //! SPACER
                AppScreenUtils.verticalSpaceMedium,

                //! SUB TITLE
                AppFadeAnimation(
                    delay: 2.8,
                    child: Text(AppTexts.ourBlogFeatures,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: 32.0.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColours.textBlack80))),

                //! SPACER
                AppScreenUtils.verticalSpaceLarge,
                //! SPACER
                AppScreenUtils.verticalSpaceLarge,

                //! TAB
                SizedBox(
                    width: 540.0.w,
                    height: 75.0.h,
                    child: TabBar(
                        controller: _tabController,
                        indicatorColor: AppColours.activeAppBarPurple,
                        indicatorWeight: 3.0.h,
                        indicatorSize: TabBarIndicatorSize.tab,
                        enableFeedback: true,
                        physics: const NeverScrollableScrollPhysics(),
                        onTap: (value) => _currentTabIndex.value = value,
                        tabs: _tabs
                            .map((blogOption) => Center(
                                child: ValueListenableBuilder(
                                    valueListenable: _currentTabIndex,
                                    builder: (context, value, child) => Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              //! ICON
                                              Transform.scale(
                                                  scale: 0.8,
                                                  child: SvgPicture.asset(
                                                      _tabsIcons.elementAt(_tabs
                                                          .indexOf(blogOption)),
                                                      color: _currentTabIndex
                                                                  .value ==
                                                              _tabs.indexOf(
                                                                  blogOption)
                                                          ? AppColours
                                                              .activeAppBarPurple
                                                          : AppColours
                                                              .blogTabGrey)),

                                              //! SPACER
                                              AppScreenUtils
                                                  .horizontalSpaceSmall,

                                              //! TITLE
                                              Text(blogOption,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyMedium!
                                                      .copyWith(
                                                          color: _currentTabIndex
                                                                      .value ==
                                                                  _tabs.indexOf(
                                                                      blogOption)
                                                              ? AppColours
                                                                  .activeAppBarPurple
                                                              : AppColours
                                                                  .blogTabGrey,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 26.0.sp))
                                            ]))))
                            .toList())),

                //! SPACER
                AppScreenUtils.verticalSpaceLarge,

                //! ARTICLES
                Container(
                    height: 1080.0.h,
                    width: double.infinity,
                    padding: AppScreenUtils.appGeneralPadding,
                    child: GridView.builder(
                        padding: AppScreenUtils.appGeneralPadding,
                        physics: const BouncingScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 420.0.w,
                            mainAxisExtent: 360.0.h,
                            crossAxisSpacing: 45.0.w,
                            mainAxisSpacing: 108.0.h),
                        itemCount: myProducts.length,
                        itemBuilder: (BuildContext ctx, index) {
                          return AppFadeAnimation(
                              delay: (index + 1) * 1.5,
                              child: BlogArticle(
                                  bgImage: AppIconAndImageURLS.articleImages
                                      .elementAt(index),
                                  title:
                                      AppTexts.articleTitles.elementAt(index),
                                  articleIndex: index));
                        })),

                //! SPACER
                AppScreenUtils.verticalSpaceSmall,

                //! FOOTER
                const Footer()
              ]),
            ),
    );
  }
}

//!
//!
//! BLOG ARTICLES WIDGET
class BlogArticle extends ConsumerWidget {
  final String title;
  final String? bgImage;
  final int articleIndex;
  const BlogArticle(
      {super.key,
      required this.articleIndex,
      this.bgImage,
      required this.title});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
        padding: AppScreenUtils.containerPadding,
        decoration: BoxDecoration(
            color: Colors.black26,
            borderRadius: BorderRadius.circular(10.0.r),
            image: bgImage != null && bgImage!.isNotEmpty
                ? DecorationImage(
                    image: AssetImage(bgImage!),
                    filterQuality: FilterQuality.high,
                    fit: BoxFit.cover)
                : null),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //!
              Text(AppTexts.article,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 21.0.sp,
                      color: AppColours.white.withOpacity(0.75))),

              //! TITLE
              Text(title,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontSize: 32.0.sp, color: AppColours.white)),

              //! BUTTON
              SizedBox(
                  height: 65.0.h,
                  width: 140.0.w,
                  child: ElevatedButton(
                      onPressed: () =>
                          selectedArticleValue.value = articleIndex,
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColours.white,
                          elevation: 0.0,
                          shadowColor: Colors.transparent),
                      child: Text(AppTexts.readArticle,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 21.0.sp,
                                  color: AppColours.activeAppBarPurple))))
            ]));
  }
}
