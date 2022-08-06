import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_movie/api/tmdb_exception.dart';
import 'package:flutter_movie/data/crew/credit_results_model.dart';
import 'package:flutter_movie/data/details/movie_detail_model.dart';
import 'package:flutter_movie/data/people/people_model.dart';
import 'package:flutter_movie/data/search/movie_results_model.dart';
import 'package:http/http.dart' as http;

class MovieClient {
  final http.Client httpClient;

  MovieClient({required this.httpClient});

  Future<dynamic> getMovieByName(String searchParam) async {
    try {
      var url = "https://api.themoviedb.org/3/search/movie?api_key=${dotenv.env["MOVIE_API_KEY"].toString()}&query=$searchParam";
      var response = await httpClient.get(Uri.parse(url));
      return MovieResults.fromJson(json.decode(response.body));
    } on SocketException catch (e) {
      return TmdbException(e.message);
    }
  }

  Future<dynamic> getMovieDetails(String movieId) async {
    try {
      var url = "https://api.themoviedb.org/3/movie/$movieId?api_key=${dotenv.env["MOVIE_API_KEY"].toString()}";
      var response = await httpClient.get(Uri.parse(url));
      return MovieDetailModel.fromJson(json.decode(response.body));
    } on SocketException catch (e) {
      return TmdbException(e.message);
    }
  }

  Future<dynamic> getMovieCrew(String movieId) async {
    try {
      var url = "https://api.themoviedb.org/3/movie/$movieId/credits?api_key=${dotenv.env["MOVIE_API_KEY"].toString()}";
      var response = await httpClient.get(Uri.parse(url));
      return CreditResultsModel.fromJson(json.decode(response.body));
    } on SocketException catch (e) {
      return TmdbException(e.message);
    }
  }

  Future<dynamic> getPeople(String personId) async {
    try {
      var url = "https://api.themoviedb.org/3/person/$personId?api_key=${dotenv.env["MOVIE_API_KEY"].toString()}";
      var response = await httpClient.get(Uri.parse(url));
      log(response.body);
      return PeopleModel.fromJson(json.decode(response.body));
    } on SocketException catch (e) {
      return TmdbException(e.message);
    }
  }
}
