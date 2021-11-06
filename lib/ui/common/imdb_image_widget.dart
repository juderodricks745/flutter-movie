import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImdbImageWidget extends StatelessWidget {
  const ImdbImageWidget({Key? key, required this.imageUrl}) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      placeholder: (context, url) => Center(child: CircularProgressIndicator()),
      errorWidget: (context, url, error) => Center(child: Icon(Icons.person, size: 30)),
      fit: BoxFit.cover,
    );
  }
}
