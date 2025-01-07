import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/tabs/quran/quran_tab.dart';
import 'package:islami/tabs/quran/verse_marker.dart';
import 'package:islami/widgets/loading_indicator.dart';

// ignore: must_be_immutable
class SuraContentScreen extends StatefulWidget {
  const SuraContentScreen({super.key});
  static const String routeName = '/sura_content';

  @override
  State<SuraContentScreen> createState() => _SuraContentScreenState();
}

class _SuraContentScreenState extends State<SuraContentScreen> {
  List<String> suraContent = [];
  late SuraDataArgs args;

  @override
  Widget build(BuildContext context) {
    args = ModalRoute.of(context)!.settings.arguments as SuraDataArgs;

    if (suraContent.isEmpty) {
      loudSuraFile();
    }
    return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/default_bg.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Scaffold(
            appBar: AppBar(title: Text(args.suraName)),
            body: suraContent.isEmpty
                ? const LoadingIndicator()
                : Container(
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
                        return RichText(
                          textAlign: TextAlign.center,
                          textDirection: TextDirection.rtl,
                          text: TextSpan(
                            style: Theme.of(context).textTheme.headlineSmall,
                            children: [
                              TextSpan(
                                text: suraContent[index].trim(),
                              ),
                              WidgetSpan(
                                alignment: PlaceholderAlignment.middle,
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 12.0),
                                  child: VerseMarker(verseNumber: index + 1),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  )));
  }

  Future<void> loudSuraFile() async {
    await Future.delayed(const Duration(seconds: 1));
    String sura =
        await rootBundle.loadString('assets/text/${args.suraIndex + 1}.txt');
    suraContent = sura
        .trim()
        .split('\n')
        .where((line) => line.trim().isNotEmpty)
        .toList();
    setState(() {});
  }
}
