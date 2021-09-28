import 'package:flutter/material.dart';
import 'package:reddit_demo/models/reddit_posts.dart' hide Image;
import 'package:reddit_demo/pages/post.dart';

class PostCard extends StatelessWidget {
  final Post post;
  const PostCard({Key key, @required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => PostPage(post: post)));
          },
          child: Card(
            child: Padding(
              child: Column(
                children: [
                  Row(children: [
                    if (post.thumbnail != null)
                      Image.network(
                        post.thumbnail,
                        fit: BoxFit.fill,
                        errorBuilder: (BuildContext context, Object exception,
                            StackTrace stackTrace) {
                          return Icon(Icons.error);
                        },
                      ),
                    Flexible(
                        child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  post.title,
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.person),
                                    Text(
                                      post.author,
                                    ),
                                  ],
                                )
                              ],
                            ))),
                  ]),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.arrow_upward_rounded),
                            Text(post.score.toString())
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.mode_comment_rounded),
                            Text(post.numComments.toString())
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.swap_calls_rounded),
                            Text(post.numCrossposts.toString())
                          ],
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                    ),
                  )
                ],
              ),
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            ),
            margin: EdgeInsets.only(bottom: 10.0),
          )),
    );
  }
}
