import 'package:deencastv2/utils/constants/color.dart';
import 'package:deencastv2/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:hijri_calendar/hijri_calendar.dart';
import 'package:intl/intl.dart';

class TodaysDate extends StatelessWidget {
  const TodaysDate({super.key});

  @override
  Widget build(BuildContext context) {
    //Get current gregoria date
    final gregorianNow = DateTime.now();
    final gregorianFormatter = DateFormat('EEEE, d MMMM yyyy');
    final formattedGregorianDate = gregorianFormatter.format(gregorianNow);

    //Get current hijri date
    final hijriDate = HijriCalendarConfig.now();
    final formattedHijri = '${hijriDate.toFormat('dd MMMM yyyy')} AH';

    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: DSizes.defaultSpace,vertical: DSizes.sm),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ///Hijri date
          Text(formattedHijri, style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: DColors.emeraldGreen),),
          ///Gregorian date
          Text(formattedGregorianDate, style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: DColors.emeraldGreen))

        ],
      ),
    );
  }
}
