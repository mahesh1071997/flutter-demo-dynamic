import '../models/chip_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tiki_application1/core/app_export.dart';

// ignore: must_be_immutable
class ChipItemWidget extends StatelessWidget {
  ChipItemWidget(this.chipItemModelObj);

  ChipItemModel chipItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Theme(
        data: ThemeData(
          canvasColor: Colors.transparent,
        ),
        child: RawChip(
          padding: getPadding(
            left: 24,
            right: 24,
          ),
          showCheckmark: false,
          labelPadding: EdgeInsets.zero,
          label: Text(
            chipItemModelObj.sizeLargeTypeBorderTxt.value,
            textAlign: TextAlign.left,
            style: TextStyle(
              color: chipItemModelObj.isSelected.value
                  ? ColorConstant.whiteA700
                  : ColorConstant.gray600,
              fontSize: getFontSize(
                18,
              ),
              fontFamily: 'Urbanist',
              fontWeight: FontWeight.w700,
            ),
          ),
          selected: chipItemModelObj.isSelected.value,
          backgroundColor: Colors.transparent,
          selectedColor: ColorConstant.deepOrangeA40001,
          shape: chipItemModelObj.isSelected.value
              ? RoundedRectangleBorder(
                  side: BorderSide.none,
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      22,
                    ),
                  ),
                )
              : RoundedRectangleBorder(
                  side: BorderSide(
                    color: ColorConstant.gray600,
                    width: getHorizontalSize(
                      2,
                    ),
                  ),
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      22,
                    ),
                  ),
                ),
          onSelected: (value) {
            chipItemModelObj.isSelected.value = value;
          },
        ),
      ),
    );
  }
}
