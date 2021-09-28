// To parse this JSON data, do
//
//     final redditData = redditDataFromJson(jsonString);

import 'dart:convert';

RedditData redditDataFromJson(String str) => RedditData.fromJson(json.decode(str));

String redditDataToJson(RedditData data) => json.encode(data.toJson());

class RedditData {
  RedditData({
    this.posts,
  });

  List<Post> posts;

  factory RedditData.fromJson(Map<String, dynamic> json) => RedditData(
    posts: json["data"] == null ? null : List<Post>.from(json["data"].map((x) => Post.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "posts": posts == null ? null : List<dynamic>.from(posts.map((x) => x.toJson())),
  };
}

class Post {
  Post({
    this.allAwardings,
    this.allowLiveComments,
    this.author,
    this.authorFlairCssClass,
    this.authorFlairRichtext,
    this.authorFlairText,
    this.authorFlairType,
    this.authorFullname,
    this.authorIsBlocked,
    this.authorPatreonFlair,
    this.authorPremium,
    this.awarders,
    this.canModPost,
    this.contestMode,
    this.createdUtc,
    this.domain,
    this.fullLink,
    this.gildings,
    this.id,
    this.isCreatedFromAdsUi,
    this.isCrosspostable,
    this.isMeta,
    this.isOriginalContent,
    this.isRedditMediaDomain,
    this.isRobotIndexable,
    this.isSelf,
    this.isVideo,
    this.linkFlairBackgroundColor,
    this.linkFlairRichtext,
    this.linkFlairTextColor,
    this.linkFlairType,
    this.locked,
    this.media,
    this.mediaEmbed,
    this.mediaOnly,
    this.noFollow,
    this.numComments,
    this.numCrossposts,
    this.over18,
    this.parentWhitelistStatus,
    this.permalink,
    this.pinned,
    this.postHint,
    this.preview,
    this.pwls,
    this.retrievedOn,
    this.score,
    this.secureMedia,
    this.secureMediaEmbed,
    this.selftext,
    this.sendReplies,
    this.spoiler,
    this.stickied,
    this.subreddit,
    this.subredditId,
    this.subredditSubscribers,
    this.subredditType,
    this.thumbnail,
    this.thumbnailHeight,
    this.thumbnailWidth,
    this.title,
    this.totalAwardsReceived,
    this.treatmentTags,
    this.upvoteRatio,
    this.url,
    this.urlOverriddenByDest,
    this.whitelistStatus,
    this.wls,
    this.linkFlairCssClass,
    this.linkFlairText,
    this.removedByCategory,
  });

  List<dynamic> allAwardings;
  bool allowLiveComments;
  String author;
  dynamic authorFlairCssClass;
  List<dynamic> authorFlairRichtext;
  dynamic authorFlairText;
  FlairType authorFlairType;
  String authorFullname;
  bool authorIsBlocked;
  bool authorPatreonFlair;
  bool authorPremium;
  List<dynamic> awarders;
  bool canModPost;
  bool contestMode;
  int createdUtc;
  Domain domain;
  String fullLink;
  Gildings gildings;
  String id;
  bool isCreatedFromAdsUi;
  bool isCrosspostable;
  bool isMeta;
  bool isOriginalContent;
  bool isRedditMediaDomain;
  bool isRobotIndexable;
  bool isSelf;
  bool isVideo;
  String linkFlairBackgroundColor;
  List<dynamic> linkFlairRichtext;
  LinkFlairTextColor linkFlairTextColor;
  FlairType linkFlairType;
  bool locked;
  Media media;
  MediaEmbed mediaEmbed;
  bool mediaOnly;
  bool noFollow;
  int numComments;
  int numCrossposts;
  bool over18;
  WhitelistStatus parentWhitelistStatus;
  String permalink;
  bool pinned;
  PostHint postHint;
  Preview preview;
  int pwls;
  int retrievedOn;
  int score;
  Media secureMedia;
  MediaEmbed secureMediaEmbed;
  String selftext;
  bool sendReplies;
  bool spoiler;
  bool stickied;
  Subreddit subreddit;
  SubredditId subredditId;
  int subredditSubscribers;
  SubredditType subredditType;
  String thumbnail;
  int thumbnailHeight;
  int thumbnailWidth;
  String title;
  int totalAwardsReceived;
  List<dynamic> treatmentTags;
  double upvoteRatio;
  String url;
  String urlOverriddenByDest;
  WhitelistStatus whitelistStatus;
  int wls;
  LinkFlairCssClass linkFlairCssClass;
  String linkFlairText;
  RemovedByCategory removedByCategory;

  factory Post.fromJson(Map<String, dynamic> json) => Post(
    allAwardings: json["all_awardings"] == null ? null : List<dynamic>.from(json["all_awardings"].map((x) => x)),
    allowLiveComments: json["allow_live_comments"] == null ? null : json["allow_live_comments"],
    author: json["author"] == null ? null : json["author"],
    authorFlairCssClass: json["author_flair_css_class"],
    authorFlairRichtext: json["author_flair_richtext"] == null ? null : List<dynamic>.from(json["author_flair_richtext"].map((x) => x)),
    authorFlairText: json["author_flair_text"],
    authorFlairType: json["author_flair_type"] == null ? null : flairTypeValues.map[json["author_flair_type"]],
    authorFullname: json["author_fullname"] == null ? null : json["author_fullname"],
    authorIsBlocked: json["author_is_blocked"] == null ? null : json["author_is_blocked"],
    authorPatreonFlair: json["author_patreon_flair"] == null ? null : json["author_patreon_flair"],
    authorPremium: json["author_premium"] == null ? null : json["author_premium"],
    awarders: json["awarders"] == null ? null : List<dynamic>.from(json["awarders"].map((x) => x)),
    canModPost: json["can_mod_post"] == null ? null : json["can_mod_post"],
    contestMode: json["contest_mode"] == null ? null : json["contest_mode"],
    createdUtc: json["created_utc"] == null ? null : json["created_utc"],
    domain: json["domain"] == null ? null : domainValues.map[json["domain"]],
    fullLink: json["full_link"] == null ? null : json["full_link"],
    gildings: json["gildings"] == null ? null : Gildings.fromJson(json["gildings"]),
    id: json["id"] == null ? null : json["id"],
    isCreatedFromAdsUi: json["is_created_from_ads_ui"] == null ? null : json["is_created_from_ads_ui"],
    isCrosspostable: json["is_crosspostable"] == null ? null : json["is_crosspostable"],
    isMeta: json["is_meta"] == null ? null : json["is_meta"],
    isOriginalContent: json["is_original_content"] == null ? null : json["is_original_content"],
    isRedditMediaDomain: json["is_reddit_media_domain"] == null ? null : json["is_reddit_media_domain"],
    isRobotIndexable: json["is_robot_indexable"] == null ? null : json["is_robot_indexable"],
    isSelf: json["is_self"] == null ? null : json["is_self"],
    isVideo: json["is_video"] == null ? null : json["is_video"],
    linkFlairBackgroundColor: json["link_flair_background_color"] == null ? null : json["link_flair_background_color"],
    linkFlairRichtext: json["link_flair_richtext"] == null ? null : List<dynamic>.from(json["link_flair_richtext"].map((x) => x)),
    linkFlairTextColor: json["link_flair_text_color"] == null ? null : linkFlairTextColorValues.map[json["link_flair_text_color"]],
    linkFlairType: json["link_flair_type"] == null ? null : flairTypeValues.map[json["link_flair_type"]],
    locked: json["locked"] == null ? null : json["locked"],
    media: json["media"] == null ? null : Media.fromJson(json["media"]),
    mediaEmbed: json["media_embed"] == null ? null : MediaEmbed.fromJson(json["media_embed"]),
    mediaOnly: json["media_only"] == null ? null : json["media_only"],
    noFollow: json["no_follow"] == null ? null : json["no_follow"],
    numComments: json["num_comments"] == null ? 0 : json["num_comments"],
    numCrossposts: json["num_crossposts"] == null ? 0 : json["num_crossposts"],
    over18: json["over_18"] == null ? null : json["over_18"],
    parentWhitelistStatus: json["parent_whitelist_status"] == null ? null : whitelistStatusValues.map[json["parent_whitelist_status"]],
    permalink: json["permalink"] == null ? null : json["permalink"],
    pinned: json["pinned"] == null ? null : json["pinned"],
    postHint: json["post_hint"] == null ? null : postHintValues.map[json["post_hint"]],
    preview: json["preview"] == null ? null : Preview.fromJson(json["preview"]),
    pwls: json["pwls"] == null ? null : json["pwls"],
    retrievedOn: json["retrieved_on"] == null ? null : json["retrieved_on"],
    score: json["score"] == null ? null : json["score"],
    secureMedia: json["secure_media"] == null ? null : Media.fromJson(json["secure_media"]),
    secureMediaEmbed: json["secure_media_embed"] == null ? null : MediaEmbed.fromJson(json["secure_media_embed"]),
    selftext: json["selftext"] == null ? null : json["selftext"],
    sendReplies: json["send_replies"] == null ? null : json["send_replies"],
    spoiler: json["spoiler"] == null ? null : json["spoiler"],
    stickied: json["stickied"] == null ? null : json["stickied"],
    subreddit: json["subreddit"] == null ? null : subredditValues.map[json["subreddit"]],
    subredditId: json["subreddit_id"] == null ? null : subredditIdValues.map[json["subreddit_id"]],
    subredditSubscribers: json["subreddit_subscribers"] == null ? null : json["subreddit_subscribers"],
    subredditType: json["subreddit_type"] == null ? null : subredditTypeValues.map[json["subreddit_type"]],
    thumbnail: json["thumbnail"] == null ? null : json["thumbnail"],
    thumbnailHeight: json["thumbnail_height"] == null ? null : json["thumbnail_height"],
    thumbnailWidth: json["thumbnail_width"] == null ? null : json["thumbnail_width"],
    title: json["title"] == null ? null : json["title"],
    totalAwardsReceived: json["total_awards_received"] == null ? null : json["total_awards_received"],
    treatmentTags: json["treatment_tags"] == null ? null : List<dynamic>.from(json["treatment_tags"].map((x) => x)),
    upvoteRatio: json["upvote_ratio"] == null ? null : json["upvote_ratio"],
    url: json["url"] == null ? null : json["url"],
    urlOverriddenByDest: json["url_overridden_by_dest"] == null ? null : json["url_overridden_by_dest"],
    whitelistStatus: json["whitelist_status"] == null ? null : whitelistStatusValues.map[json["whitelist_status"]],
    wls: json["wls"] == null ? null : json["wls"],
    linkFlairCssClass: json["link_flair_css_class"] == null ? null : linkFlairCssClassValues.map[json["link_flair_css_class"]],
    linkFlairText: json["link_flair_text"] == null ? null : json["link_flair_text"],
    removedByCategory: json["removed_by_category"] == null ? null : removedByCategoryValues.map[json["removed_by_category"]],
  );

  Map<String, dynamic> toJson() => {
    "all_awardings": allAwardings == null ? null : List<dynamic>.from(allAwardings.map((x) => x)),
    "allow_live_comments": allowLiveComments == null ? null : allowLiveComments,
    "author": author == null ? null : author,
    "author_flair_css_class": authorFlairCssClass,
    "author_flair_richtext": authorFlairRichtext == null ? null : List<dynamic>.from(authorFlairRichtext.map((x) => x)),
    "author_flair_text": authorFlairText,
    "author_flair_type": authorFlairType == null ? null : flairTypeValues.reverse[authorFlairType],
    "author_fullname": authorFullname == null ? null : authorFullname,
    "author_is_blocked": authorIsBlocked == null ? null : authorIsBlocked,
    "author_patreon_flair": authorPatreonFlair == null ? null : authorPatreonFlair,
    "author_premium": authorPremium == null ? null : authorPremium,
    "awarders": awarders == null ? null : List<dynamic>.from(awarders.map((x) => x)),
    "can_mod_post": canModPost == null ? null : canModPost,
    "contest_mode": contestMode == null ? null : contestMode,
    "created_utc": createdUtc == null ? null : createdUtc,
    "domain": domain == null ? null : domainValues.reverse[domain],
    "full_link": fullLink == null ? null : fullLink,
    "gildings": gildings == null ? null : gildings.toJson(),
    "id": id == null ? null : id,
    "is_created_from_ads_ui": isCreatedFromAdsUi == null ? null : isCreatedFromAdsUi,
    "is_crosspostable": isCrosspostable == null ? null : isCrosspostable,
    "is_meta": isMeta == null ? null : isMeta,
    "is_original_content": isOriginalContent == null ? null : isOriginalContent,
    "is_reddit_media_domain": isRedditMediaDomain == null ? null : isRedditMediaDomain,
    "is_robot_indexable": isRobotIndexable == null ? null : isRobotIndexable,
    "is_self": isSelf == null ? null : isSelf,
    "is_video": isVideo == null ? null : isVideo,
    "link_flair_background_color": linkFlairBackgroundColor == null ? null : linkFlairBackgroundColor,
    "link_flair_richtext": linkFlairRichtext == null ? null : List<dynamic>.from(linkFlairRichtext.map((x) => x)),
    "link_flair_text_color": linkFlairTextColor == null ? null : linkFlairTextColorValues.reverse[linkFlairTextColor],
    "link_flair_type": linkFlairType == null ? null : flairTypeValues.reverse[linkFlairType],
    "locked": locked == null ? null : locked,
    "media": media == null ? null : media.toJson(),
    "media_embed": mediaEmbed == null ? null : mediaEmbed.toJson(),
    "media_only": mediaOnly == null ? null : mediaOnly,
    "no_follow": noFollow == null ? null : noFollow,
    "num_comments": numComments == null ? null : numComments,
    "num_crossposts": numCrossposts == null ? null : numCrossposts,
    "over_18": over18 == null ? null : over18,
    "parent_whitelist_status": parentWhitelistStatus == null ? null : whitelistStatusValues.reverse[parentWhitelistStatus],
    "permalink": permalink == null ? null : permalink,
    "pinned": pinned == null ? null : pinned,
    "post_hint": postHint == null ? null : postHintValues.reverse[postHint],
    "preview": preview == null ? null : preview.toJson(),
    "pwls": pwls == null ? null : pwls,
    "retrieved_on": retrievedOn == null ? null : retrievedOn,
    "score": score == null ? null : score,
    "secure_media": secureMedia == null ? null : secureMedia.toJson(),
    "secure_media_embed": secureMediaEmbed == null ? null : secureMediaEmbed.toJson(),
    "selftext": selftext == null ? null : selftext,
    "send_replies": sendReplies == null ? null : sendReplies,
    "spoiler": spoiler == null ? null : spoiler,
    "stickied": stickied == null ? null : stickied,
    "subreddit": subreddit == null ? null : subredditValues.reverse[subreddit],
    "subreddit_id": subredditId == null ? null : subredditIdValues.reverse[subredditId],
    "subreddit_subscribers": subredditSubscribers == null ? null : subredditSubscribers,
    "subreddit_type": subredditType == null ? null : subredditTypeValues.reverse[subredditType],
    "thumbnail": thumbnail == null ? null : thumbnail.replaceAll("http://","https://"),
    "thumbnail_height": thumbnailHeight == null ? null : thumbnailHeight,
    "thumbnail_width": thumbnailWidth == null ? null : thumbnailWidth,
    "title": title == null ? null : title,
    "total_awards_received": totalAwardsReceived == null ? null : totalAwardsReceived,
    "treatment_tags": treatmentTags == null ? null : List<dynamic>.from(treatmentTags.map((x) => x)),
    "upvote_ratio": upvoteRatio == null ? null : upvoteRatio,
    "url": url == null ? null : url,
    "url_overridden_by_dest": urlOverriddenByDest == null ? null : urlOverriddenByDest,
    "whitelist_status": whitelistStatus == null ? null : whitelistStatusValues.reverse[whitelistStatus],
    "wls": wls == null ? null : wls,
    "link_flair_css_class": linkFlairCssClass == null ? null : linkFlairCssClassValues.reverse[linkFlairCssClass],
    "link_flair_text": linkFlairText == null ? null : linkFlairText,
    "removed_by_category": removedByCategory == null ? null : removedByCategoryValues.reverse[removedByCategory],
  };
}

enum FlairType { TEXT }

final flairTypeValues = EnumValues({
  "text": FlairType.TEXT
});

enum Domain { YOUTUBE_COM, YOUTU_BE, STREAMABLE_COM, M_YOUTUBE_COM, CASHBELL_CO, SANSACSON_BLOGSPOT_COM, TODAYTRUENEWS_COM }

final domainValues = EnumValues({
  "cashbell.co": Domain.CASHBELL_CO,
  "m.youtube.com": Domain.M_YOUTUBE_COM,
  "sansacson.blogspot.com": Domain.SANSACSON_BLOGSPOT_COM,
  "streamable.com": Domain.STREAMABLE_COM,
  "todaytruenews.com": Domain.TODAYTRUENEWS_COM,
  "youtube.com": Domain.YOUTUBE_COM,
  "youtu.be": Domain.YOUTU_BE
});

class Gildings {
  Gildings();

  factory Gildings.fromJson(Map<String, dynamic> json) => Gildings(
  );

  Map<String, dynamic> toJson() => {
  };
}

enum LinkFlairCssClass { REMOVED, WARNING }

final linkFlairCssClassValues = EnumValues({
  "removed": LinkFlairCssClass.REMOVED,
  "warning": LinkFlairCssClass.WARNING
});

enum LinkFlairTextColor { DARK }

final linkFlairTextColorValues = EnumValues({
  "dark": LinkFlairTextColor.DARK
});

class Media {
  Media({
    this.oembed,
    this.type,
  });

  Oembed oembed;
  Domain type;

  factory Media.fromJson(Map<String, dynamic> json) => Media(
    oembed: json["oembed"] == null ? null : Oembed.fromJson(json["oembed"]),
    type: json["type"] == null ? null : domainValues.map[json["type"]],
  );

  Map<String, dynamic> toJson() => {
    "oembed": oembed == null ? null : oembed.toJson(),
    "type": type == null ? null : domainValues.reverse[type],
  };
}

class Oembed {
  Oembed({
    this.authorName,
    this.authorUrl,
    this.height,
    this.html,
    this.providerName,
    this.providerUrl,
    this.thumbnailHeight,
    this.thumbnailUrl,
    this.thumbnailWidth,
    this.title,
    this.type,
    this.version,
    this.width,
    this.description,
    this.url,
  });

  String authorName;
  String authorUrl;
  int height;
  String html;
  ProviderName providerName;
  String providerUrl;
  int thumbnailHeight;
  String thumbnailUrl;
  int thumbnailWidth;
  String title;
  Type type;
  String version;
  int width;
  String description;
  String url;

  factory Oembed.fromJson(Map<String, dynamic> json) => Oembed(
    authorName: json["author_name"] == null ? null : json["author_name"],
    authorUrl: json["author_url"] == null ? null : json["author_url"],
    height: json["height"] == null ? null : json["height"],
    html: json["html"] == null ? null : json["html"],
    providerName: json["provider_name"] == null ? null : providerNameValues.map[json["provider_name"]],
    providerUrl: json["provider_url"] == null ? null : json["provider_url"],
    thumbnailHeight: json["thumbnail_height"] == null ? null : json["thumbnail_height"],
    thumbnailUrl: json["thumbnail_url"] == null ? null : json["thumbnail_url"],
    thumbnailWidth: json["thumbnail_width"] == null ? null : json["thumbnail_width"],
    title: json["title"] == null ? null : json["title"],
    type: json["type"] == null ? null : typeValues.map[json["type"]],
    version: json["version"] == null ? null : json["version"],
    width: json["width"] == null ? null : json["width"],
    description: json["description"] == null ? null : json["description"],
    url: json["url"] == null ? null : json["url"],
  );

  Map<String, dynamic> toJson() => {
    "author_name": authorName == null ? null : authorName,
    "author_url": authorUrl == null ? null : authorUrl,
    "height": height == null ? null : height,
    "html": html == null ? null : html,
    "provider_name": providerName == null ? null : providerNameValues.reverse[providerName],
    "provider_url": providerUrl == null ? null : providerUrl,
    "thumbnail_height": thumbnailHeight == null ? null : thumbnailHeight,
    "thumbnail_url": thumbnailUrl == null ? null : thumbnailUrl,
    "thumbnail_width": thumbnailWidth == null ? null : thumbnailWidth,
    "title": title == null ? null : title,
    "type": type == null ? null : typeValues.reverse[type],
    "version": version == null ? null : version,
    "width": width == null ? null : width,
    "description": description == null ? null : description,
    "url": url == null ? null : url,
  };
}

enum ProviderName { YOU_TUBE, STREAMABLE }

final providerNameValues = EnumValues({
  "Streamable": ProviderName.STREAMABLE,
  "YouTube": ProviderName.YOU_TUBE
});

enum Type { VIDEO }

final typeValues = EnumValues({
  "video": Type.VIDEO
});

class MediaEmbed {
  MediaEmbed({
    this.content,
    this.height,
    this.scrolling,
    this.width,
    this.mediaDomainUrl,
  });

  String content;
  int height;
  bool scrolling;
  int width;
  String mediaDomainUrl;

  factory MediaEmbed.fromJson(Map<String, dynamic> json) => MediaEmbed(
    content: json["content"] == null ? null : json["content"],
    height: json["height"] == null ? null : json["height"],
    scrolling: json["scrolling"] == null ? null : json["scrolling"],
    width: json["width"] == null ? null : json["width"],
    mediaDomainUrl: json["media_domain_url"] == null ? null : json["media_domain_url"],
  );

  Map<String, dynamic> toJson() => {
    "content": content == null ? null : content,
    "height": height == null ? null : height,
    "scrolling": scrolling == null ? null : scrolling,
    "width": width == null ? null : width,
    "media_domain_url": mediaDomainUrl == null ? null : mediaDomainUrl,
  };
}

enum WhitelistStatus { ALL_ADS }

final whitelistStatusValues = EnumValues({
  "all_ads": WhitelistStatus.ALL_ADS
});

enum PostHint { RICH_VIDEO, LINK }

final postHintValues = EnumValues({
  "link": PostHint.LINK,
  "rich:video": PostHint.RICH_VIDEO
});

class Preview {
  Preview({
    this.enabled,
    this.images,
  });

  bool enabled;
  List<Image> images;

  factory Preview.fromJson(Map<String, dynamic> json) => Preview(
    enabled: json["enabled"] == null ? null : json["enabled"],
    images: json["images"] == null ? null : List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "enabled": enabled == null ? null : enabled,
    "images": images == null ? null : List<dynamic>.from(images.map((x) => x.toJson())),
  };
}

class Image {
  Image({
    this.id,
    this.resolutions,
    this.source,
    this.variants,
  });

  String id;
  List<Source> resolutions;
  Source source;
  Gildings variants;

  factory Image.fromJson(Map<String, dynamic> json) => Image(
    id: json["id"] == null ? null : json["id"],
    resolutions: json["resolutions"] == null ? null : List<Source>.from(json["resolutions"].map((x) => Source.fromJson(x))),
    source: json["source"] == null ? null : Source.fromJson(json["source"]),
    variants: json["variants"] == null ? null : Gildings.fromJson(json["variants"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "resolutions": resolutions == null ? null : List<dynamic>.from(resolutions.map((x) => x.toJson())),
    "source": source == null ? null : source.toJson(),
    "variants": variants == null ? null : variants.toJson(),
  };
}

class Source {
  Source({
    this.height,
    this.url,
    this.width,
  });

  int height;
  String url;
  int width;

  factory Source.fromJson(Map<String, dynamic> json) => Source(
    height: json["height"] == null ? null : json["height"],
    url: json["url"] == null ? null : json["url"],
    width: json["width"] == null ? null : json["width"],
  );

  Map<String, dynamic> toJson() => {
    "height": height == null ? null : height,
    "url": url == null ? null : url,
    "width": width == null ? null : width,
  };
}

enum RemovedByCategory { MODERATOR, REDDIT, AUTOMOD_FILTERED }

final removedByCategoryValues = EnumValues({
  "automod_filtered": RemovedByCategory.AUTOMOD_FILTERED,
  "moderator": RemovedByCategory.MODERATOR,
  "reddit": RemovedByCategory.REDDIT
});

enum Subreddit { VIDEOS }

final subredditValues = EnumValues({
  "videos": Subreddit.VIDEOS
});

enum SubredditId { T5_2_QH1_E }

final subredditIdValues = EnumValues({
  "t5_2qh1e": SubredditId.T5_2_QH1_E
});

enum SubredditType { PUBLIC }

final subredditTypeValues = EnumValues({
  "public": SubredditType.PUBLIC
});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
