import 'package:flutter/material.dart';
import 'package:flutter_analog_clock/flutter_analog_clock.dart';

import '../app_color.dart';

class AppClock extends StatelessWidget {
  const AppClock({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: AnalogClock(
        markingWidthFactor: 0.0,
        dialColor: Colors.grey[400],
        hourNumbers: const [
          '',
          '',
          '3',
          '',
          '',
          '6',
          '',
          '',
          '9',
          '',
          '',
          '12'
        ],
        hourHandColor: AppColor.buttonAppColor,
        hourHandWidthFactor: .50,
        minuteHandColor: AppColor.buttonAppColor,
        secondHandColor: Colors.black26,
        secondHandWidthFactor: 3,
        secondHandLengthFactor: 0.8,
      ),
    );
  }
}
