import 'package:flutter/material.dart';

class GenericTagsWidget extends StatelessWidget {
  const GenericTagsWidget({Key? key, required this.tags}) : super(key: key);
  final List<String> tags;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 5,
      children: tags.map((element) {
        return GenericTagItem(tagItem: element);
      }).toList(),
    );
  }
}

class GenericTagItem extends StatelessWidget {
  const GenericTagItem({Key? key, required this.tagItem}) : super(key: key);

  final String tagItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 5, bottom: 5),
      decoration: const BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Text(
          tagItem,
          style: const TextStyle(fontSize: 14, color: Colors.white),
        ),
      ),
    );
  }
}
