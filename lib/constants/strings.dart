class Strings {
  static String reddit_comments_url =
      'https://api.pushshift.io/reddit/comment/search?link_id=';
  static String reddit_subcomments_url =
      'https://api.pushshift.io/reddit/comment/search?parent_id=t1_';

  static String redditPostsUrl(String subreddit, String? sort) {
    return 'https://api.pushshift.io/reddit/submission/search?sort_type=${sort!=null?sort:'score'}&limit=100&sort=desc&over_18=false&subreddit=$subreddit';
  }
}
