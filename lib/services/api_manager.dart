import 'dart:convert';
import 'dart:core';
import 'dart:developer';
import 'package:flutter/material.dart';

import 'package:reddit_demo/constants/strings.dart';
import 'package:reddit_demo/models/reddit_posts.dart';
import 'package:reddit_demo/models/reddit_comments.dart';
import "package:http/http.dart" as http;

class API_Manager {
  Future<List<Post>> getPosts(String subreddit, String? sort) async {
    var client = http.Client();
    var response =
        await client.get(Uri.parse(Strings.redditPostsUrl(subreddit, sort)));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      var jsonMap = json.decode(jsonString);
      RedditData redditData = RedditData.fromJson(jsonMap);
      return List.from(redditData.posts!
          .where((element) => element.thumbnail!.startsWith("https://")));
    }
    return List.empty();
  }

  Future<List<Comment>> getComments(String postId) async {
    var client = http.Client();
    var response =
        await client.get(Uri.parse(Strings.reddit_comments_url + postId));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      var jsonMap = json.decode(jsonString);
      RedditComments redditComments = RedditComments.fromJson(jsonMap);
      return List.from(redditComments.comments!
          .where((element) => element.linkId == element.parentId));
    }
    return List.empty();
  }

  Future<List<Comment>> getSubComments(String parentId) async {
    var client = http.Client();
    var response =
        await client.get(Uri.parse(Strings.reddit_subcomments_url + parentId));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      var jsonMap = json.decode(jsonString);
      RedditComments redditComments = RedditComments.fromJson(jsonMap);
      return redditComments.comments!;
    }
    return List.empty();
  }
}
