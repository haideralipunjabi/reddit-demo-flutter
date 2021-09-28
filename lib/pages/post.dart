import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:reddit_demo/common/comment_card.dart';
import 'package:reddit_demo/common/post_card.dart';
import 'package:reddit_demo/models/reddit_comments.dart';
import 'package:reddit_demo/models/reddit_posts.dart';
import 'package:reddit_demo/services/api_manager.dart';

class PostPage extends StatefulWidget {
  final Post post;
  const PostPage({Key key, @required this.post}) : super(key: key);

  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  Future<List<Comment>> _redditComments;

  void initState() {
    _redditComments = API_Manager().getComments(widget.post.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.post.title)),
      body: Column(
        children: [
          PostCard(post: widget.post),
          Expanded(
            child: FutureBuilder<List<Comment>>(
                future: _redditComments,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                        itemCount: snapshot.data.length,
                        itemBuilder: (context, index) {
                            return CommentCard(comment: snapshot.data[index]);
                        });
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                }),
          )
        ],
      ),
    );
  }
}
