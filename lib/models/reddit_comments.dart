// To parse this JSON data, do
//
//     final redditComments = redditCommentsFromJson(jsonString);

import 'dart:convert';

RedditComments redditCommentsFromJson(String str) =>
    RedditComments.fromJson(json.decode(str));

String redditCommentsToJson(RedditComments data) => json.encode(data.toJson());

class RedditComments {
  RedditComments({
    this.comments,
  });

  List<Comment>? comments;

  factory RedditComments.fromJson(Map<String, dynamic> json) => RedditComments(
        comments: json["data"] == null
            ? null
            : List<Comment>.from(json["data"].map((x) => Comment.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "comments": comments == null
            ? null
            : List<dynamic>.from(comments!.map((x) => x.toJson())),
      };

}

class Comment {
  Comment({
    this.approvedAtUtc,
    this.author,
    this.authorFlairBackgroundColor,
    this.authorFlairCssClass,
    this.authorFlairRichtext,
    this.authorFlairTemplateId,
    this.authorFlairText,
    this.authorFlairTextColor,
    this.authorFlairType,
    this.authorFullname,
    this.bannedAtUtc,
    this.body,
    this.canModPost,
    this.collapsed,
    this.collapsedReason,
    this.comments,
    this.createdUtc,
    this.distinguished,
    this.edited,
    this.id,
    this.isSubmitter,
    this.linkId,
    this.noFollow,
    this.parentId,
    this.permalink,
    this.retrievedOn,
    this.score,
    this.sendReplies,
    this.stickied,
    this.subreddit,
    this.subredditId,
  });

  dynamic? approvedAtUtc;
  String? author;
  dynamic? authorFlairBackgroundColor;
  dynamic? authorFlairCssClass;
  List<dynamic>? authorFlairRichtext;
  dynamic? authorFlairTemplateId;
  dynamic? authorFlairText;
  dynamic? authorFlairTextColor;
  AuthorFlairType? authorFlairType;
  String? authorFullname;
  dynamic? bannedAtUtc;
  String? body;
  bool? canModPost;
  bool? collapsed;
  dynamic? collapsedReason;
  List<Comment>? comments;
  int? createdUtc;
  dynamic? distinguished;
  bool? edited;
  String? id;
  bool? isSubmitter;
  String? linkId;
  bool? noFollow;
  String? parentId;
  String? permalink;
  int? retrievedOn;
  int? score;
  bool? sendReplies;
  bool? stickied;
  Subreddit? subreddit;
  SubredditId? subredditId;

  factory Comment.fromJson(Map<String, dynamic> json) => Comment(
        approvedAtUtc: json["approved_at_utc"],
        author: json["author"],
        authorFlairBackgroundColor: json["author_flair_background_color"],
        authorFlairCssClass: json["author_flair_css_class"],
        authorFlairRichtext: json["author_flair_richtext"] == null
            ? null
            : List<dynamic>.from(json["author_flair_richtext"].map((x) => x)),
        authorFlairTemplateId: json["author_flair_template_id"],
        authorFlairText: json["author_flair_text"],
        authorFlairTextColor: json["author_flair_text_color"],
        authorFlairType: json["author_flair_type"] == null
            ? null
            : authorFlairTypeValues.map[json["author_flair_type"]],
        authorFullname:
            json["author_fullname"],
        bannedAtUtc: json["banned_at_utc"],
        body: json["body"],
        canModPost: json["can_mod_post"],
        collapsed: json["collapsed"],
        collapsedReason: json["collapsed_reason"],
        createdUtc: json["created_utc"],
        distinguished: json["distinguished"],
        edited: json["edited"],
        id: json["id"],
        isSubmitter: json["is_submitter"],
        linkId:
            json["link_id"],
        noFollow: json["no_follow"],
        parentId: json["parent_id"],
        permalink: json["permalink"],
        retrievedOn: json["retrieved_on"],
        score: json["score"],
        sendReplies: json["send_replies"],
        stickied: json["stickied"],
        subreddit: json["subreddit"] == null
            ? null
            : subredditValues.map[json["subreddit"]],
        subredditId: json["subreddit_id"] == null
            ? null
            : subredditIdValues.map[json["subreddit_id"]],
      );

  Map<String, dynamic> toJson() => {
        "approved_at_utc": approvedAtUtc,
        "author": author,
        "author_flair_background_color": authorFlairBackgroundColor,
        "author_flair_css_class": authorFlairCssClass,
        "author_flair_richtext": authorFlairRichtext == null
            ? null
            : List<dynamic>.from(authorFlairRichtext!.map((x) => x)),
        "author_flair_template_id": authorFlairTemplateId,
        "author_flair_text": authorFlairText,
        "author_flair_text_color": authorFlairTextColor,
        "author_flair_type": authorFlairType == null
            ? null
            : authorFlairTypeValues.reverse[authorFlairType],
        "author_fullname": authorFullname,
        "banned_at_utc": bannedAtUtc,
        "body": body,
        "can_mod_post": canModPost,
        "collapsed": collapsed,
        "collapsed_reason": collapsedReason,
        "created_utc": createdUtc,
        "distinguished": distinguished,
        "edited": edited,
        "id": id,
        "is_submitter": isSubmitter,
        "link_id": linkId,
        "no_follow": noFollow,
        "parent_id": parentId,
        "permalink": permalink,
        "retrieved_on": retrievedOn,
        "score": score,
        "send_replies": sendReplies,
        "stickied": stickied,
        "subreddit":
            subredditValues.reverse[subreddit],
        "subreddit_id":
            subredditIdValues.reverse[subredditId],
      };
}

enum AuthorFlairType { TEXT }

final authorFlairTypeValues = EnumValues({"text": AuthorFlairType.TEXT});


enum Subreddit { VIDEOS }

final subredditValues = EnumValues({"videos": Subreddit.VIDEOS});

enum SubredditId { T5_2_QH1_E }

final subredditIdValues = EnumValues({"t5_2qh1e": SubredditId.T5_2_QH1_E});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap!;
  }
}
