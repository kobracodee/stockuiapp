import 'package:flutter/material.dart';
import 'package:stocksapp/utilities/color_manager.dart';
import 'package:stocksapp/utilities/stock.dart';

class PortfolioPositions extends StatelessWidget {
  const PortfolioPositions({
    super.key,
    required this.stocks,
  });

  final List<Stock> stocks;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Portfolio positions",
            style: TextStyle(
              color: ColorManager.primaryText,
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 12.5),
          ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(
              height: 10,
            ),
            shrinkWrap: true,
            itemCount: stocks.length,
            itemBuilder: (context, index) {
              return ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                tileColor: ColorManager.graphBackground,
                leading: AspectRatio(
                  aspectRatio: 1,
                  child: stocks[index].logo,
                ),
                title: Text(
                  stocks[index].name,
                  style: TextStyle(
                    color: ColorManager.primaryText,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                subtitle: Text(
                  "1 st by ${stocks[index].firstBy}",
                  style: TextStyle(
                    color: ColorManager.secondaryText,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      stocks[index].currentPrice.toString(),
                      style: TextStyle(
                        color: ColorManager.primaryText,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      stocks[index].changeRate > 0
                          ? "+${stocks[index].changeRate}%"
                          : "${stocks[index].changeRate}%",
                      style: TextStyle(
                        color: stocks[index].changeRate > 0
                            ? ColorManager.positiveValue.withOpacity(0.8)
                            : ColorManager.negativeValue.withOpacity(0.8),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
