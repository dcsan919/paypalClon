import 'package:flutter/material.dart';

class MainLayout extends StatelessWidget {
  final Widget? title;
  final Widget? leading;
  final Widget body;
  final Color? backcolor;

  const MainLayout(
      {Key? key, this.title, this.leading, required this.body, this.backcolor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backcolor ?? Color(0xFFEFF3F8),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            title != null || leading != null
                ? SliverAppBar(
                    backgroundColor: Colors.transparent,
                    title: title,
                    centerTitle: true,
                    leading: leading,
                    scrolledUnderElevation: 0,
                    pinned: false,
                    floating: true,
                    elevation: 0,
                  )
                : SliverToBoxAdapter(child: SizedBox.shrink()),
            SliverList(
              delegate: SliverChildListDelegate([
                body,
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
