// import 'dart:html';

import "package:flutter/material.dart";
import 'package:reddit_demo/common/post_card.dart';
import 'package:reddit_demo/models/reddit_posts.dart' hide Image;
import 'package:reddit_demo/services/api_manager.dart';

enum SortType { sort_top, sort_new }

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<List<Post>>? _redditPosts;
  String subreddit = "FlutterDev";
  final dialogTextController = TextEditingController();
  SortType _sortType = SortType.sort_top;

  String getSortString() {
    switch (_sortType) {
      case SortType.sort_top:
        return "score";
      case SortType.sort_new:
        return "created_utc";
      default:
        return "score";
    }
  }

  @override
  void initState() {
    _redditPosts = APIManager().getPosts(subreddit, getSortString());
    super.initState();
  }

  void changeSubreddit(String _subreddit) {
    setState(() {
      subreddit = _subreddit;
      _redditPosts = null;
      _redditPosts = APIManager().getPosts(subreddit, getSortString());
    });
  }

  void changeSort(SortType sort) {
    setState(() {
      _sortType = sort;
      _redditPosts = null;
      _redditPosts = APIManager().getPosts(subreddit, getSortString());
    });
  }

  void _dismissDialog() {
    Navigator.pop(context);
  }

  void _showSubredditChangeDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Change Subreddit"),
            content: TextField(
              decoration: InputDecoration(labelText: 'Subreddit Name'),
              controller: dialogTextController,
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    changeSubreddit(dialogTextController.text);
                    Navigator.pop(context);
                  },
                  child: Text("Ok"))
            ],
          );
        });
  }

  void _showSortChangeDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Change Sort"),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  title: Text("Top"),
                  leading: Radio<SortType>(
                    value: SortType.sort_top,
                    groupValue: _sortType,
                    onChanged: (SortType? value) {
                      changeSort(value!);
                      _dismissDialog();
                    },
                  ),
                ),
                ListTile(
                  title: Text("New"),
                  leading: Radio<SortType>(
                    value: SortType.sort_new,
                    groupValue: _sortType,
                    onChanged: (SortType? value) {
                      changeSort(value!);
                      _dismissDialog();
                    },
                  ),
                )
              ],
            ),
            // actions: [
            //   TextButton(
            //       onPressed: () {
            //         changeSubreddit(dialogTextController.text);
            //       },
            //       child: Text("Ok"))
            // ],
          );
        });
  }

  @override
  void dispose() {
    dialogTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Reddit Demo - r/" + subreddit),
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      _showSubredditChangeDialog();
                    },
                    icon: Icon(Icons.edit)),
                IconButton(
                    onPressed: () {
                      _showSortChangeDialog();
                    },
                    icon: Icon(Icons.sort))
              ],
            )
          ],
        ),
      ),
      body: Container(
          child: FutureBuilder<List<Post>>(
        future: _redditPosts,
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.done) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return PostCard(post: snapshot.data![index]);
                });
          }
          return Center(child: Text("An Error Occured while loading"),);
        },
      )),
    );
  }
}
