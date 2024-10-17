import 'package:flutter/material.dart';
import 'package:islami/tabs/quran/quran_tab.dart';

// ignore: must_be_immutable
class SuraContentScreen extends StatelessWidget {
  SuraContentScreen({super.key});
  static const String routeName = '/sura_content';
  late SuraDataArgs args;
  static const List<String> suraContent = [
    'بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيم',
    'الحمد لله رب العالمين',
    'الرَّحْمَنِ الرَّحِيمِ',
    'مَالِكِ يَوْمِ الدِّينِ',
    'إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ',
    'اهْدِنَا الصِّرَاطَ الْمُسْتَقِيمَ',
    'صِرَاطَ الَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلَا الضَّالِّين'
  ];

  @override
  Widget build(BuildContext context) {
    args = ModalRoute.of(context)!.settings.arguments as SuraDataArgs;

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/default_bg.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(title: Text(args.suraName)),
        body: Container(
          padding: const EdgeInsets.all(20.0),
          margin: EdgeInsets.symmetric(
              horizontal: 26,
              vertical: MediaQuery.sizeOf(context).height * 0.05),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: ListView.builder(
            itemCount: suraContent.length,
            itemBuilder: (context, index) {
              return Text(suraContent[index],
                  style: Theme.of(context).textTheme.headlineSmall,
                  textAlign: TextAlign.center);
            },
          ),
        ),
      ),
    );
  }
}
