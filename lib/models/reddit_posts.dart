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

  List<Post>? posts;

  factory RedditData.fromJson(Map<String, dynamic> json) => RedditData(
    posts: json["data"] == null ? null : List<Post>.from(json["data"].map((x) => Post.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "posts": List<dynamic>.from(posts!.map((x) => x.toJson())),
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

  List<dynamic>? allAwardings;
  bool? allowLiveComments;
  String? author;
  dynamic? authorFlairCssClass;
  List<dynamic>? authorFlairRichtext;
  dynamic? authorFlairText;
  FlairType? authorFlairType;
  String? authorFullname;
  bool? authorIsBlocked;
  bool? authorPatreonFlair;
  bool? authorPremium;
  List<dynamic>? awarders;
  bool? canModPost;
  bool? contestMode;
  int? createdUtc;
  Domain? domain;
  String? fullLink;
  Gildings? gildings;
  String? id;
  bool? isCreatedFromAdsUi;
  bool? isCrosspostable;
  bool? isMeta;
  bool? isOriginalContent;
  bool? isRedditMediaDomain;
  bool? isRobotIndexable;
  bool? isSelf;
  bool? isVideo;
  String? linkFlairBackgroundColor;
  List<dynamic>? linkFlairRichtext;
  LinkFlairTextColor? linkFlairTextColor;
  FlairType? linkFlairType;
  bool? locked;
  Media? media;
  MediaEmbed? mediaEmbed;
  bool? mediaOnly;
  bool? noFollow;
  int? numComments;
  int? numCrossposts;
  bool? over18;
  WhitelistStatus? parentWhitelistStatus;
  String? permalink;
  bool? pinned;
  PostHint? postHint;
  Preview? preview;
  int? pwls;
  int? retrievedOn;
  int? score;
  Media? secureMedia;
  MediaEmbed? secureMediaEmbed;
  String? selftext;
  bool? sendReplies;
  bool? spoiler;
  bool? stickied;
  Subreddit? subreddit;
  SubredditId? subredditId;
  int? subredditSubscribers;
  SubredditType? subredditType;
  String? thumbnail;
  int? thumbnailHeight;
  int? thumbnailWidth;
  String? title;
  int? totalAwardsReceived;
  List<dynamic>? treatmentTags;
  double? upvoteRatio;
  String? url;
  String? urlOverriddenByDest;
  WhitelistStatus? whitelistStatus;
  int? wls;
  LinkFlairCssClass? linkFlairCssClass;
  String? linkFlairText;
  RemovedByCategory? removedByCategory;

  factory Post.fromJson(Map<String, dynamic> json) => Post(
    allAwardings: json["all_awardings"] == null ? null : List<dynamic>.from(json["all_awardings"].map((x) => x)),
    allowLiveComments: json["allow_live_comments"],
    author: json["author"],
    authorFlairCssClass: json["author_flair_css_class"],
    authorFlairRichtext: json["author_flair_richtext"] == null ? null : List<dynamic>.from(json["author_flair_richtext"].map((x) => x)),
    authorFlairText: json["author_flair_text"],
    authorFlairType: flairTypeValues.map[json["author_flair_type"]],
    authorFullname: json["author_fullname"],
    authorIsBlocked: json["author_is_blocked"],
    authorPatreonFlair: json["author_patreon_flair"],
    authorPremium: json["author_premium"],
    awarders: json["awarders"] == null ? null : List<dynamic>.from(json["awarders"].map((x) => x)),
    canModPost: json["can_mod_post"],
    contestMode: json["contest_mode"],
    createdUtc: json["created_utc"],
    domain: domainValues.map[json["domain"]],
    fullLink: json["full_link"],
    gildings: json["glidings"] == null ? null : Gildings.fromJson(json["gildings"]),
    id: json["id"],
    isCreatedFromAdsUi: json["is_created_from_ads_ui"],
    isCrosspostable: json["is_crosspostable"],
    isMeta: json["is_meta"],
    isOriginalContent: json["is_original_content"],
    isRedditMediaDomain: json["is_reddit_media_domain"],
    isRobotIndexable: json["is_robot_indexable"],
    isSelf: json["is_self"],
    isVideo: json["is_video"],
    linkFlairBackgroundColor: json["link_flair_background_color"],
    linkFlairRichtext: json["link_flair_richtext"] == null ? null : List<dynamic>.from(json["link_flair_richtext"].map((x) => x)),
    linkFlairTextColor: linkFlairTextColorValues.map[json["link_flair_text_color"]],
    linkFlairType: flairTypeValues.map[json["link_flair_type"]],
    locked: json["locked"],
    media: json["media"] == null ? null : Media.fromJson(json["media"]),
    mediaEmbed: json["media_embed"] == null ? null : MediaEmbed.fromJson(json["media_embed"]),
    mediaOnly: json["media_only"],
    noFollow: json["no_follow"],
    numComments: json["num_comments"] == null ? 0 : json["num_comments"],
    numCrossposts: json["num_crossposts"] == null ? 0 : json["num_crossposts"],
    over18: json["over_18"] == null ? null : json["over_18"],
    parentWhitelistStatus: whitelistStatusValues.map[json["parent_whitelist_status"]],
    permalink: json["permalink"],
    pinned: json["pinned"],
    postHint: postHintValues.map[json["post_hint"]],
    preview: json["preview"] == null ? null : Preview.fromJson(json["preview"]),
    pwls: json["pwls"],
    retrievedOn: json["retrieved_on"],
    score: json["score"],
    secureMedia: json["source_media"] == null ? null : Media.fromJson(json["secure_media"]),
    secureMediaEmbed: json["source_media_embed"] == null ? null : MediaEmbed.fromJson(json["secure_media_embed"]),
    selftext: json["selftext"],
    sendReplies: json["send_replies"],
    spoiler: json["spoiler"],
    stickied: json["stickied"],
    subreddit: subredditValues.map[json["subreddit"]],
    subredditId: subredditIdValues.map[json["subreddit_id"]],
    subredditSubscribers: json["subreddit_subscribers"],
    subredditType: subredditTypeValues.map[json["subreddit_type"]],
    thumbnail: json["thumbnail"],
    thumbnailHeight: json["thumbnail_height"],
    thumbnailWidth: json["thumbnail_width"],
    title: json["title"],
    totalAwardsReceived: json["total_awards_received"],
    treatmentTags: json["treatment_tags"] == null ? null : List<dynamic>.from(json["treatment_tags"].map((x) => x)),
    upvoteRatio: json["upvote_ratio"],
    url: json["url"],
    urlOverriddenByDest: json["url_overridden_by_dest"],
    whitelistStatus: whitelistStatusValues.map[json["whitelist_status"]],
    wls: json["wls"],
    linkFlairCssClass: linkFlairCssClassValues.map[json["link_flair_css_class"]],
    linkFlairText: json["link_flair_text"],
    removedByCategory: removedByCategoryValues.map[json["removed_by_category"]],
  );

  Map<String, dynamic> toJson() => {
    "all_awardings": List<dynamic>.from(allAwardings!.map((x) => x)),
    "allow_live_comments": allowLiveComments,
    "author": author,
    "author_flair_css_class": authorFlairCssClass,
    "author_flair_richtext": List<dynamic>.from(authorFlairRichtext!.map((x) => x)),
    "author_flair_text": authorFlairText,
    "author_flair_type": flairTypeValues.reverse[authorFlairType],
    "author_fullname": authorFullname,
    "author_is_blocked": authorIsBlocked,
    "author_patreon_flair": authorPatreonFlair,
    "author_premium":authorPremium,
    "awarders": List<dynamic>.from(awarders!.map((x) => x)),
    "can_mod_post":canModPost,
    "contest_mode": contestMode,
    "created_utc": createdUtc,
    "domain": domainValues.reverse[domain],
    "full_link":fullLink,
    "gildings": gildings!.toJson(),
    "id": id,
    "is_created_from_ads_ui": isCreatedFromAdsUi,
    "is_crosspostable":  isCrosspostable,
    "is_meta": isMeta,
    "is_original_content": isOriginalContent,
    "is_reddit_media_domain": isRedditMediaDomain,
    "is_robot_indexable": isRobotIndexable,
    "is_self": isSelf,
    "is_video": isVideo,
    "link_flair_background_color": linkFlairBackgroundColor,
    "link_flair_richtext": List<dynamic>.from(linkFlairRichtext!.map((x) => x)),
    "link_flair_text_color": linkFlairTextColorValues.reverse[linkFlairTextColor],
    "link_flair_type": flairTypeValues.reverse[linkFlairType],
    "locked": locked,
    "media":media!.toJson(),
    "media_embed":mediaEmbed!.toJson(),
    "media_only": mediaOnly,
    "no_follow": noFollow,
    "num_comments": numComments,
    "num_crossposts": numCrossposts,
    "over_18": over18,
    "parent_whitelist_status": whitelistStatusValues.reverse[parentWhitelistStatus],
    "permalink": permalink,
    "pinned": pinned,
    "post_hint": postHintValues.reverse[postHint],
    "preview": preview!.toJson(),
    "pwls":pwls,
    "retrieved_on":retrievedOn,
    "score": score,
    "secure_media": secureMedia!.toJson(),
    "secure_media_embed": secureMediaEmbed!.toJson(),
    "selftext": selftext,
    "send_replies": sendReplies,
    "spoiler": spoiler,
    "stickied": stickied,
    "subreddit": subredditValues.reverse[subreddit],
    "subreddit_id": subredditIdValues.reverse[subredditId],
    "subreddit_subscribers": subredditSubscribers,
    "subreddit_type": subredditTypeValues.reverse[subredditType],
    "thumbnail": thumbnail!.replaceAll("http://","https://"),
    "thumbnail_height": thumbnailHeight,
    "thumbnail_width": thumbnailWidth,
    "title": title,
    "total_awards_received": totalAwardsReceived,
    "treatment_tags": List<dynamic>.from(treatmentTags!.map((x) => x)),
    "upvote_ratio": upvoteRatio,
    "url": url,
    "url_overridden_by_dest": urlOverriddenByDest,
    "whitelist_status": whitelistStatusValues.reverse[whitelistStatus],
    "wls": wls,
    "link_flair_css_class": linkFlairCssClassValues.reverse[linkFlairCssClass],
    "link_flair_text": linkFlairText,
    "removed_by_category": removedByCategoryValues.reverse[removedByCategory],
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

  Oembed? oembed;
  Domain? type;

  factory Media.fromJson(Map<String, dynamic> json)  => Media(
    oembed: Oembed.fromJson(json["oembed"]),
    type: domainValues.map[json["type"]],
  );

  Map<String, dynamic> toJson() => {
    "oembed": oembed!.toJson(),
    "type": domainValues.reverse[type],
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

  String? authorName;
  String? authorUrl;
  int? height;
  String? html;
  ProviderName? providerName;
  String? providerUrl;
  int? thumbnailHeight;
  String? thumbnailUrl;
  int? thumbnailWidth;
  String? title;
  Type? type;
  String? version;
  int? width;
  String? description;
  String? url;

  factory Oembed.fromJson(Map<String, dynamic> json) => Oembed(
    authorName: json["author_name"],
    authorUrl: json["author_url"],
    height: json["height"],
    html: json["html"],
    providerName: providerNameValues.map[json["provider_name"]],
    providerUrl: json["provider_url"],
    thumbnailHeight: json["thumbnail_height"],
    thumbnailUrl: json["thumbnail_url"],
    thumbnailWidth: json["thumbnail_width"],
    title: json["title"],
    type: typeValues.map[json["type"]],
    version: json["version"],
    width: json["width"],
    description: json["description"],
    url: json["url"],
  );

  Map<String, dynamic> toJson() => {
    "author_name": authorName,
    "author_url": authorUrl,
    "height": height,
    "html": html,
    "provider_name": providerNameValues.reverse[providerName],
    "provider_url": providerUrl,
    "thumbnail_height": thumbnailHeight,
    "thumbnail_url": thumbnailUrl,
    "thumbnail_width": thumbnailWidth,
    "title": title,
    "type": typeValues.reverse[type],
    "version": version,
    "width": width,
    "description": description,
    "url": url,
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

  String? content;
  int? height;
  bool? scrolling;
  int? width;
  String? mediaDomainUrl;

  factory MediaEmbed.fromJson(Map<String, dynamic> json) => MediaEmbed(
    content: json["content"],
    height: json["height"],
    scrolling: json["scrolling"],
    width: json["width"],
    mediaDomainUrl: json["media_domain_url"],
  );

  Map<String, dynamic> toJson() => {
    "content": content,
    "height": height,
    "scrolling": scrolling,
    "width": width,
    "media_domain_url": mediaDomainUrl,
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

  bool? enabled;
  List<Image>? images;

  factory Preview.fromJson(Map<String, dynamic> json) => Preview(
    enabled: json["enabled"],
    images: json["images"] == null ? null : List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "enabled": enabled,
    "images": List<dynamic>.from(images!.map((x) => x.toJson())),
  };
}

class Image {
  Image({
    this.id,
    this.resolutions,
    this.source,
    this.variants,
  });

  String? id;
  List<Source>? resolutions;
  Source? source;
  Gildings? variants;

  factory Image.fromJson(Map<String, dynamic> json) => Image(
    id: json["id"],
    resolutions: json["resolutions"] == null ? null : List<Source>.from(json["resolutions"].map((x) => Source.fromJson(x))),
    source: Source.fromJson(json["source"]),
    variants: Gildings.fromJson(json["variants"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "resolutions": List<dynamic>.from(resolutions!.map((x) => x.toJson())),
    "source": source!.toJson(),
    "variants": variants!.toJson(),
  };
}

class Source {
  Source({
    this.height,
    this.url,
    this.width,
  });

  int? height;
  String? url;
  int? width;

  factory Source.fromJson(Map<String, dynamic> json) => Source(
    height: json["height"],
    url: json["url"],
    width: json["width"],
  );

  Map<String, dynamic> toJson() => {
    "height": height,
    "url": url,
    "width": width,
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
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap!;
  }
}
