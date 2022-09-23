part of 'widgets.dart';

class GeneralPage extends StatelessWidget {
  final Widget? titleAppBar;
  final Widget? floatingButton, bottomNavigationBar, drawer;
  final List<Widget> actionsAppBar;
  final Widget body;
  final Future<void> Function()? onRefresh;
  final Color? backgroundColorAppBar, statusBarColor, backgroundColor;
  final bool isArrowBack;
  final Function()? onBack;
  final PreferredSizeWidget? customAppBar, bottomAppBar;
  final double? elevation;

  const GeneralPage({
    Key? key,
    this.titleAppBar,
    required this.body,
    this.floatingButton,
    this.bottomNavigationBar,
    this.drawer,
    this.onRefresh,
    this.actionsAppBar = const [],
    this.backgroundColorAppBar = whiteColor,
    this.isArrowBack = true,
    this.statusBarColor = whiteColor,
    this.onBack,
    this.backgroundColor,
    this.customAppBar,
    this.bottomAppBar,
    this.elevation = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: (titleAppBar != null)
          ? AppBar(
              // iconTheme: const IconThemeData(color: blackColor),
              backgroundColor: backgroundColorAppBar,
              titleTextStyle: (backgroundColorAppBar != whiteColor)
                  ? whiteTextFontTitleBold
                  : blackTextFontTitleBold1,
              title: Row(
                children: [
                  if (isArrowBack)
                    GestureDetector(
                      onTap: () {
                        if (onBack != null) {
                          onBack!();
                        }
                        Get.back();
                      },
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        size: 20,
                        color: (backgroundColorAppBar != whiteColor)
                            ? whiteColor
                            : blackColor,
                      ),
                    ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(child: titleAppBar ?? const SizedBox()),
                ],
              ),
              elevation: elevation,
              actions: actionsAppBar,
              bottom: bottomAppBar,
            )
          : (customAppBar != null)
              ? customAppBar
              : null,
      drawerScrimColor: Colors.transparent,
      body: RefreshIndicator(
        onRefresh: onRefresh ?? () async {},
        color: blackColor,
        child: body,
      ),
      floatingActionButton: floatingButton,
      bottomNavigationBar: bottomNavigationBar,
      drawer: drawer,
    );
  }
}
