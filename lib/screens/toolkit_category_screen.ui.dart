import 'package:carousel_slider/carousel_slider.dart';
import 'package:dark_theme/extensions/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ToolKitCategory extends StatelessWidget {
  const ToolKitCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final CarouselController _controller = CarouselController();

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Container(
        height: 900,
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Center(
                child: Text(
                  'state.toolkitCategory?.description',
                  style: theme.titleMedium,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Text('t.whats_new', style: theme.listHeadingMedium),
              ),
            ),
            SliverToBoxAdapter(
              child: _Carousel(controller: _controller, theme: theme),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 30,
              ),
            ),
            // for (var i = 0;
            //     i < (state.toolkitCategory?.tool_kit_sub_categories.length ?? 0);
            //     i++) ...[
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                  'state.toolkitCategory?.tool_kit_sub_categories[i].title',
                  style: theme.listHeadingMedium,
                ),
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 12)),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, j) {
                  return GestureDetector(
                    onTap: () {
                      // final toolKitType = state
                      //     .toolkitCategory
                      //     ?.tool_kit_sub_categories[i]
                      //     .tool_kits[j]
                      //     .tool_kit_type;
                      // final toolKitId = state.toolkitCategory
                      //     ?.tool_kit_sub_categories[i].tool_kits[j].id;
                      // if (toolKitId != null) {
                      //   context.pushNamed(
                      //     ROUTE.tool_profile_page_name,
                      //     queryParams: Map<String, String>.from(
                      //       ToolProfilePageQueryParams(
                      //         toolKitId: toolKitId,
                      //         categoryId: widget.queryParams.categoryId,
                      //         toolKitType: toolKitType,
                      //       ).toJson(),
                      //     ),
                      //   );
                      // }
                    },
                    child: Container(
                      height: 80,
                      width: 230,
                      margin: const EdgeInsets.only(bottom: 10, left: 5),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        primary: false,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        children: [
                          Container(
                            width: 127,
                            height: 70,
                            margin: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              color: theme.backgroundColor,
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  // color of shadow
                                  spreadRadius: 4,
                                  blurRadius: 4,
                                  offset: Offset(0, 0),
                                ),
                              ],
                              image: DecorationImage(
                                image: NetworkImage(
                                  'https://picsum.photos/200/300',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(width: 15),
                          Container(
                            padding: const EdgeInsets.only(top: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'state.toolkitCategory?.tool_kit_sub_categories[i]',
                                  style: theme.bodyMedium?.copyWith(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  'state',
                                  //     .toolkitCategory
                                  //     ?.tool_kit_sub_categories[i]
                                  //     .tool_kits[j]
                                  //     .short_description ??
                                  // "",
                                  style: theme.bodyMedium?.copyWith(
                                    fontSize: 17,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                // childCount: state.toolkitCategory?.tool_kit_sub_categories[i]
                //         .tool_kits.length ??
                // 0,
              ),
            ),
          ],
          // // ],
        ),
      ),
    );
  }
}

class _Carousel extends StatelessWidget {
  const _Carousel({
    Key? key,
    required CarouselController controller,
    required this.theme,
  })  : _controller = controller,
        super(key: key);
  final CarouselController _controller;
  final ThemeData theme;
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      carouselController: _controller,
      options: CarouselOptions(
        viewportFraction: 1,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        onPageChanged: (index, reason) {},
        height: 350.0,
      ),
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: theme.backgroundColor,
                borderRadius: BorderRadius.circular(14),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    //color of shadow
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(3, 2),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(14),
                        topRight: Radius.circular(14)),
                    child: Image.network(
                      "https://images.unsplash.com/photo-1544367567-0f2fcb009e0b?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max",
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15.0,
                      left: 10,
                    ),
                    child: Text(
                      "Daily 2x Boost",
                      style: theme.listHeadingMedium,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      "Receive extra rewards by doing this habit now!",
                      style: theme.titleMedium,
                    ),
                  )
                ],
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
