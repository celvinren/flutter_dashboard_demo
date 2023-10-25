import 'package:design_components/design_components.dart';
import 'package:flutter/material.dart';

import '../home_page_desktop.dart';

///
class DataListCard extends StatelessWidget {
  ///
  const DataListCard();

  @override
  Widget build(final BuildContext context) => const Card(
        child: Padding(
          padding: EdgeInsets.all(bodyPaddingVertical),
          child: Column(
            children: [
              Row(
                children: [
                  CardTitle(title: 'Details'),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              TitleValueListTile(
                title: 'Previous Close',
                value: '4,324.32',
              ),
              SizedBox(
                height: 10,
              ),
              TitleValueListTile(
                title: 'Year Range',
                value: '4,834.32 - 4,932.53',
              ),
              SizedBox(
                height: 10,
              ),
              TitleValueListTile(
                title: 'Day Range',
                value: '2,623.28 - 3,823.74',
              ),
              SizedBox(
                height: 10,
              ),
              TitleValueListTile(
                title: 'Market Cap',
                value: r'$23.7 T USD',
              ),
              SizedBox(
                height: 10,
              ),
              TitleValueListTile(
                title: 'P/E Ratio',
                value: '82.73',
              ),
            ],
          ),
        ),
      );
}
