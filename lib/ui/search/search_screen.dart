import 'package:flutter/material.dart';
import 'package:flutter_movie/ui/common/error_retry_widget.dart';
import 'package:flutter_movie/ui/search/search_controller.dart';
import 'package:flutter_movie/ui/search/search_list.dart';
import 'package:get/get.dart';

import 'search_default_widget.dart';

class SearchScreen extends GetView<SearchController> {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.scaffoldBackgroundColor,
      appBar: AppBar(
        title: const Text("Search Movies"),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: TextField(
                controller: controller.searchController,
                textInputAction: TextInputAction.search,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.only(top: 8, bottom: 8, left: 16),
                  hintText: "Type here to search movies...",
                  suffixIcon: Icon(Icons.search),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                ),
                onChanged: (query) {
                  if (query.isEmpty) {
                    controller.resetMovies();
                    FocusScopeNode currentFocus = FocusScope.of(context);
                    currentFocus.unfocus();
                  }
                },
                onSubmitted: (query) {
                  controller.searchMoviesWithQuery();
                },
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: GetX<SearchController>(
                  builder: (controller) {
                    return controller.state.when(
                      loading: () => const Center(child: CircularProgressIndicator()),
                      data: (result) => SearchList(items: result ?? List.empty()),
                      error: (error) => ErrorWithRetry(
                        errorMessage: error,
                        onPressed: () => controller.searchMoviesWithQuery(),
                      ),
                      initial: () => SearchDefaultWidget(),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
