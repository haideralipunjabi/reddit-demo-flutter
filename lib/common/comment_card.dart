import 'package:flutter/material.dart';
import 'package:reddit_demo/models/reddit_comments.dart';
import 'package:reddit_demo/services/api_manager.dart';

class CommentCard extends StatefulWidget {
  final Comment comment;

  CommentCard({Key? key, required this.comment}) : super(key: key);

  @override
  _CommentCardState createState() => _CommentCardState();
}

class _CommentCardState extends State<CommentCard> {
  Future<List<Comment>>? _redditSubComments;
  bool subCommentsLoaded = false;
  void initState() {
    _redditSubComments = APIManager().getSubComments(widget.comment.id!);
    super.initState();
  }

  void toggleSubComments() {
    setState(() {
      subCommentsLoaded = !subCommentsLoaded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: GestureDetector(
          onTap: () {
            toggleSubComments();
          },
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    widget.comment.author!,
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    widget.comment.body!,
                    style: TextStyle(fontSize: 20.0),
                  ),
                  if (subCommentsLoaded)
                    Flexible(
                        fit: FlexFit.loose,
                        child: FutureBuilder<List<Comment>>(
                          future: _redditSubComments,
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {
                              return ListView.builder(
                                  scrollDirection: Axis.vertical,
                                  shrinkWrap: true,
                                  itemCount: snapshot.data!.length,
                                  itemBuilder: (context, index) {
                                    return CommentCard(
                                        comment: snapshot.data![index]);
                                  });
                            } else {
                              return Container(
                                child:
                                    Center(child: CircularProgressIndicator()),
                                margin: EdgeInsets.symmetric(vertical: 16.0),
                              );
                            }
                          },
                        ))
                ],
              ),
            ),
          ),
        ));
  }
}
