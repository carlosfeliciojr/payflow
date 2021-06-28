import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widgets/divider_vertical/divider_vertical_widget.dart';
import 'package:payflow/shared/widgets/label_button/label_button.dart';

class SetLabelButtons extends StatelessWidget {
  final String primaryLabel;
  final VoidCallback primaryOnTap;
  final String secundaryLabel;
  final VoidCallback secundaryOnTap;
  final bool enablePrimaryColor;
  final bool enableSecundaryColor;
  const SetLabelButtons({
    Key? key,
    required this.primaryLabel,
    required this.primaryOnTap,
    required this.secundaryLabel,
    required this.secundaryOnTap,
    this.enablePrimaryColor = false,
    this.enableSecundaryColor = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.background,
      height: 57,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Divider(
            thickness: 1,
            height: 1,
            color: AppColors.stroke,
          ),
          Container(
            height: 56,
            child: Row(
              children: [
                Expanded(
                    child: LabelButton(
                  label: primaryLabel,
                  onTap: primaryOnTap,
                  style: enablePrimaryColor ? TextStyles.buttonPrimary : null,
                )),
                DividerVerticalWidget(),
                Expanded(
                    child: LabelButton(
                  label: secundaryLabel,
                  onTap: secundaryOnTap,
                  style: enableSecundaryColor ? TextStyles.buttonPrimary : null,
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
