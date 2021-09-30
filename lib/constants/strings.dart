class Strings {
  static String redditPostsUrl(String subreddit, String? sort) {
    return 'https://api.pushshift.io/reddit/submission/search?sort_type=${sort != null ? sort : 'score'}&limit=100&sort=desc&over_18=false&subreddit=$subreddit';
  }
  static String redditSubcommentsUrl(String parentId) {
    return 'https://api.pushshift.io/reddit/comment/search?parent_id=t1_$parentId';
  }
  static String redditCommentsUrl(String linkId) {
    return 'https://api.pushshift.io/reddit/comment/search?link_id=$linkId';
  }
}
