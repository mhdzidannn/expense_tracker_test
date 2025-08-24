import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AppTabBar extends HookWidget {
  final ValueChanged<int>? onTap;
  final List<Widget> tabs;
  final TabController? controller;

  const AppTabBar({
    super.key,
    required this.tabs,
    this.onTap,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final tabController = useListenable(controller ?? DefaultTabController.maybeOf(context));
    final focused = useState(0);
    useEffect(() {
      tabController?.addListener(() {
        focused.value = tabController.index;
      });
      return null;
    }, []);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: TabBar(
        controller: tabController,
        isScrollable: true,
        tabAlignment: TabAlignment.start,
        labelPadding: EdgeInsets.zero,
        onTap: onTap,
        dividerColor: Colors.transparent,
        tabs: tabs.indexed
            .map(
              ((int, Widget) e) => Container(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                decoration: BoxDecoration(
                  borderRadius: focused.value == e.$1
                      ? BorderRadius.circular(8)
                      : e.$1 == 0
                          ? const BorderRadius.horizontal(left: Radius.circular(8.0))
                          : e.$1 == tabs.length - 1
                              ? const BorderRadius.horizontal(right: Radius.circular(8.0))
                              : BorderRadius.zero,
                  color: focused.value == e.$1 ? Colors.transparent : const Color(0xFFF6F6F6),
                ),
                height:  focused.value == e.$1 ? 60 : 50,
                child: Center(child: e.$2),
              ),
            )
            .toList(),
        labelColor: Colors.black,
        indicator: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(8),
          shape: BoxShape.rectangle,
        ),
        indicatorSize: TabBarIndicatorSize.tab,
        unselectedLabelColor: const Color(0xFF666666),
      ),
    );
  }
}
