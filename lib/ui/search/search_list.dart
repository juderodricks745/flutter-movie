import 'package:flutter/material.dart';
import 'package:flutter_movie/data/search/results_model.dart';

import 'search_item.dart';

class SearchList extends StatelessWidget {
  SearchList({Key? key, required this.items}) : super(key: key);
  final List<ResultsModel> items;

  @override
  Widget build(BuildContext context) {
    if (items.isEmpty) {
      return Center(
        child: Text("No movies found!"),
      );
    }
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 0.8,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Container(
          child: SearchItem(
            item: items[index],
          ),
        );
      },
    );
  }
}