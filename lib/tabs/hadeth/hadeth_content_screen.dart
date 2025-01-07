import 'package:flutter/material.dart';
import 'package:islami/tabs/hadeth/hadeth_model.dart';
import 'package:islami/widgets/loading_indicator.dart';

class HadethContentScreen extends StatelessWidget {
  static const String routeName = '/hadeth-content';
  const HadethContentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HadethModel args =
        ModalRoute.of(context)!.settings.arguments as HadethModel;
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/default_bg.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(title: Text(args.title)),
        body: args.content.isEmpty
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
                child: ListView.separated(
                  itemCount: args.content.length,
                  itemBuilder: (context, index) {
                    return Text(args.content[index].trim(),
                        style: Theme.of(context).textTheme.headlineSmall,
                        textAlign: TextAlign.center);
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 12,
                    );
                  },
                ),
              ),
      ),
    );
  }
}
