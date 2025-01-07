import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/tabs/hadeth/hadeth_model.dart';

class HadethTab extends StatefulWidget {
  const HadethTab({super.key});

  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  @override
  Widget build(BuildContext context) {
    const List<String> hadethTitle = [
      'الحَدِيثُ الأول',
      'الحَدِيثُ الثاني',
      'الحَدِيثُ الثالث',
      'الحَدِيثُ الرابع',
      'الحَدِيثُ الخامس',
      'الحَدِيثُ السادس',
      'الحَدِيثُ السابع',
      'الحَدِيثُ الثامن',
      'الحَدِيثُ التاسع',
      'الحَدِيثُ العاشر',
      'الحَدِيثُ الحادي',
      'الحَدِيثُ الثاني',
      'الحَدِيثُ الثالث',
      'الحَدِيثُ الرابع',
      'الحَدِيثُ الخامس',
      'الحَدِيثُ السادس',
    ];
    return Column(
      children: [
        Image.asset(
          'assets/images/hadeth_logo.png',
          height: MediaQuery.sizeOf(context).height * 0.25,
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          child: Stack(children: [
            Column(
              children: [
                Divider(
                  color: Theme.of(context).primaryColor,
                  thickness: 3,
                ),
                Center(
                  child: Text(
                    'الأحاديث',
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                Divider(
                  color: Theme.of(context).primaryColor,
                  thickness: 3,
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 70),
              child: ListView.separated(
                itemCount: hadethTitle.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        '/hadeth-content',
                        arguments: HadethModel(
                          hadethTitle[index],
                          // hadethContent[index],
                        ),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          hadethTitle[index].toString(),
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.02,
                  );
                },
              ),
            ),
          ]),
        )
      ],
    );
  }

  Future<void> loudHadethFile() async {
    await Future.delayed(const Duration(seconds: 1));
    // List<String> hadethContent = [];
    String hadethContent =
        await rootBundle.loadString('assets/text/hadeth.txt');
    List<String> hadethContentList = hadethContent.trim().split('#');

    setState(() {});
  }
}
