import 'package:flutter/material.dart';
import 'package:text_to_multi_transleting/app/base/base_page.dart';
import 'package:text_to_multi_transleting/app/base/base_scaffold.dart';
import 'package:text_to_multi_transleting/app/common_widgets/button/button_default.dart';
import 'package:text_to_multi_transleting/app/common_widgets/card/card_select_languange.dart';
import 'package:text_to_multi_transleting/app/res/styles.dart';

import '../common_widgets/card/card_list_translate.dart';
import '../common_widgets/text_form/tf_original_text.dart';
import 'bloc/translating_bloc.dart';

class TranslatingPage extends BaseScaffold<TranslatingBloc> {
  TranslatingPage({Key? key}) : super(key: key, blocClass: TranslatingBloc());

  @override
  void initializeDependency() {
    blocClass.initilize();
  }

  @override
  Widget? bodyScaffold(BuildContext context, Size sizePage) => BasePage(
        smartphoneView: SafeArea(
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 15),
            children: [
              const Text(
                "run",
                style: Styles.textTitle,
              ),
              CardSelectLanguange(
                title: "Pilih Bahasa",
                onTap: () {
                  blocClass
                      .add(const TranslatingEvent.onSelectOriginalLanguange());
                },
              ),
              const SizedBox(height: 15),
              const Text(
                "Ke :",
                style: Styles.textTitle,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CardSelectLanguange(
                      title: "Pilih Bahasa",
                      onTap: () {
                        blocClass.add(
                            const TranslatingEvent.onSelectListLanguanges(
                                ['siap', 'dua', 'tiga']));
                      },
                    ),
                    for (int i = 0; i < 10; i++) ...[
                      CardSelectLanguange(
                        title: "Okee",
                        onTap: () {},
                      ),
                    ],
                  ],
                ),
              ),
              const SizedBox(height: 15),
              TextFormOriginalText(onTapSound: () {
                blocClass.add(
                    const TranslatingEvent.onClickSound("Test Sound sound"));
              }),
              const SizedBox(height: 15),
              Align(
                alignment: Alignment.centerRight,
                child: ValueListenableBuilder<bool>(
                  valueListenable: blocClass.showLoadingButton,
                  builder: (context, valueLoading, widget) => ButtonDefault(
                    key: const Key('buttonTranslate'),
                    titleButton: "Translate",
                    onTap: () {
                      debugPrint("tapped");
                      // blocClass.add(const TranslatingEvent.onClickTranslate());
                    },
                    showLoading: valueLoading,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => CardListTranslate(
                  languanges: 'Indonesia',
                  onTapSound: () {
                    blocClass.add(const TranslatingEvent.onClickSound(
                        "Test Sound sound"));
                  },
                  valueTranslating:
                      'Indonesia diosa jdiosja odij asoidj oiasjdioasj diojas dioj aso',
                ),
              ),
            ],
          ),
        ),
      );
}
