import 'package:flutter/material.dart';
import 'package:stocksapp/utilities/color_manager.dart';

class GraphFilter extends StatelessWidget {
  const GraphFilter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            color: ColorManager.inactiveColor,
            width: 2,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: ["1W", "1M", "6M", "1Y"].map((e) {
            return TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 35,
                  vertical: 18,
                ),
                foregroundColor: ColorManager.primaryText,
                backgroundColor: e == "1M" ? ColorManager.accentColor : null,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              child: Text(
                e,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
