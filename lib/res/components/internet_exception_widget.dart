import 'package:flutter/material.dart';
import 'package:flutter_mvvm/res/colors/app_color.dart';
import 'package:get/get_utils/get_utils.dart';

class InternetExceptionWidget extends StatefulWidget {
  const InternetExceptionWidget({super.key, required this.onPress});

  final VoidCallback onPress;

  @override
  State<InternetExceptionWidget> createState() =>
      _InternetExceptionWidgetState();
}

class _InternetExceptionWidgetState extends State<InternetExceptionWidget> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(height: height * 0.15),
          const Icon(
            Icons.cloud_off,
            color: AppColors.redColor,
            size: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Center(
              child: Text(
                "internet_exception".tr,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(height: height * 0.1),
          InkWell(
            onTap: widget.onPress,
            child: Container(
              height: 44,
              width: 160,
              decoration: BoxDecoration(
                color: AppColors.buttonColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  "Retry",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: AppColors.buttonTextColor),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
