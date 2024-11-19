import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stocksapp/utilities/color_manager.dart';
import 'package:stocksapp/widgets/graph_filter_widget.dart';
import 'package:stocksapp/widgets/line_chart_widget.dart';
import 'package:stocksapp/widgets/portfolio_balance_widget.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: ColorManager.primaryBackground,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.account_balance_outlined,
              color: ColorManager.primaryText,
              size: 40,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: ColorManager.primaryBackground,
                shape: CircleBorder(
                    side: BorderSide(
                  color: ColorManager.inactiveColor,
                )),
                padding: const EdgeInsets.all(10),
              ),
              child: Icon(
                CupertinoIcons.bell,
                color: ColorManager.primaryText,
                size: 30,
              ),
            ),
          ],
        ),
      ),
      backgroundColor: ColorManager.primaryBackground,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: ColorManager.graphBackground,
        fixedColor: ColorManager.primaryText,
        unselectedItemColor: ColorManager.secondaryText,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.house_fill),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.chart_pie),
            label: 'Portfolio',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.bookmark),
            label: 'Ideas',
          ),
        ],
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PortfolioBalance(),
          LineChartWidget(),
          GraphFilter(),
          SizedBox(height: 25),
          // Column(
          //   children: [
          //     Text(
          //       "Protfolio positions",
          //       style: TextStyle(
          //         color: ColorManager.primaryText,
          //         fontSize: 20,
          //         fontWeight: FontWeight.w500,
          //       ),
          //     ),
          //     const SizedBox(height: 10),
          //   ],
          // ),
        ],
      ),
    );
  }
}
