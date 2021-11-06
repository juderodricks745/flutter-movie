import 'package:flutter/material.dart';
import 'package:flutter_movie/data/crew/cast_model.dart';

import 'people_item.dart';

class MovieCrewContent extends StatelessWidget {
  MovieCrewContent({Key? key, required this.casts}) : super(key: key);

  final List<CastModel> casts;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 170,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Card(
            elevation: 2,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Crew",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Expanded(
                    child: ListView.builder(
                      itemCount: casts.length,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return PeopleItem(cast: casts[index],);
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}