import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stocksapp/utilities/color_manager.dart';

class PortfolioBalance extends StatelessWidget {
  const PortfolioBalance({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Portfolio balance",
                style: TextStyle(
                  color: ColorManager.secondaryText,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "\$1280.48",
                style: TextStyle(
                  color: ColorManager.primaryText,
                  fontSize: 35,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: ColorManager.accentColor,
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(10),
            ),
            child: Icon(
              CupertinoIcons.add,
              color: ColorManager.primaryText,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
