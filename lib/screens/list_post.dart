import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'dart:convert';


class ListPost extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ListPostState();
  }
}

class _ListPostState extends State<ListPost> {
  Map<dynamic, dynamic> postListResponse;
  final String appUrl = 'https://flutterforum.co/';

  void initState() {
    super.initState();
    getPostLists();
  }

  Size _deviceSize;

  getPostLists() async {
    await http.get(appUrl + 'posts.json').then((response) {
      setState(() {
        postListResponse = json.decode(response.body);
      });
    });
    
    postListResponse = {
      "latest_posts": [
        {
          "id": 16,
          "name": "Sagar Karwande",
          "username": "sagar",
          "avatar_template":
              "letter_avatar_proxy/v4/letter/s/6de8d8/{size}.png",
          "created_at": "2019-06-01T07:18:25.491Z",
          "cooked":
              "<p>Flutter is used by Google and developers and organizations around the world to deliver beautiful native apps on iOS and Android.</p>",
          "post_number": 1,
          "post_type": 1,
          "updated_at": "2019-06-01T07:18:25.491Z",
          "reply_count": 0,
          "reply_to_post_number": null,
          "quote_count": 0,
          "incoming_link_count": 0,
          "reads": 1,
          "score": 0,
          "yours": false,
          "topic_id": 13,
          "topic_slug": "flutter-hackathon-19",
          "topic_title": "Flutter Hackathon 19",
          "topic_html_title": "Flutter Hackathon 19",
          "category_id": 1,
          "display_username": "Sagar Karwande",
          "primary_group_name": null,
          "primary_group_flair_url": null,
          "primary_group_flair_bg_color": null,
          "primary_group_flair_color": null,
          "version": 1,
          "can_edit": false,
          "can_delete": false,
          "can_recover": false,
          "can_wiki": false,
          "user_title": null,
          "raw":
              "Flutter is used by Google and developers and organizations around the world to deliver beautiful native apps on iOS and Android.",
          "actions_summary": [],
          "moderator": false,
          "admin": false,
          "staff": false,
          "user_id": 2,
          "hidden": false,
          "trust_level": 1,
          "deleted_at": null,
          "user_deleted": false,
          "edit_reason": null,
          "can_view_edit_history": true,
          "wiki": false
        },
        {
          "id": 10,
          "name": "system",
          "username": "system",
          "avatar_template":
              "/user_avatar/flutterforum.co/system/{size}/2_2.png",
          "created_at": "2019-06-01T06:53:40.295Z",
          "cooked":
              "<p>The first paragraph of this pinned topic will be visible as a welcome message to all new visitors on your homepage. It’s important!</p>\n<p><strong>Edit this</strong> into a brief description of your community:</p>\n<ul>\n<li>Who is it for?</li>\n<li>What can they find here?</li>\n<li>Why should they come here?</li>\n<li>Where can they read more (links, resources, etc)?</li>\n</ul>\n<p><img src=\"https://flutterforum.co/images/welcome/discourse-edit-post-animated.gif\" width=\"508\" height=\"106\"></p>\n<p>You may want to close this topic via the admin <img src=\"https://flutterforum.co/images/emoji/twitter/wrench.png?v=9\" title=\":wrench:\" class=\"emoji\" alt=\":wrench:\"> (at the upper right and bottom), so that replies don’t pile up on an announcement.</p>",
          "post_number": 1,
          "post_type": 1,
          "updated_at": "2019-06-01T06:53:40.295Z",
          "reply_count": 0,
          "reply_to_post_number": null,
          "quote_count": 0,
          "incoming_link_count": 0,
          "reads": 1,
          "score": 0.2,
          "yours": false,
          "topic_id": 7,
          "topic_slug": "welcome-to-discourse",
          "topic_title": "Welcome to Discourse",
          "topic_html_title": "Welcome to Discourse",
          "category_id": 1,
          "display_username": "system",
          "primary_group_name": null,
          "primary_group_flair_url": null,
          "primary_group_flair_bg_color": null,
          "primary_group_flair_color": null,
          "version": 1,
          "can_edit": false,
          "can_delete": false,
          "can_recover": false,
          "can_wiki": false,
          "user_title": null,
          "raw":
              "\nThe first paragraph of this pinned topic will be visible as a welcome message to all new visitors on your homepage. It's important!\n\n**Edit this** into a brief description of your community:\n\n- Who is it for?\n- What can they find here?\n- Why should they come here?\n- Where can they read more (links, resources, etc)?\n\n<img src=\"/images/welcome/discourse-edit-post-animated.gif\" width=\"508\" height=\"106\">\n\nYou may want to close this topic via the admin :wrench: (at the upper right and bottom), so that replies don't pile up on an announcement.",
          "actions_summary": [],
          "moderator": true,
          "admin": true,
          "staff": true,
          "user_id": -1,
          "hidden": false,
          "trust_level": 4,
          "deleted_at": null,
          "user_deleted": false,
          "edit_reason": null,
          "can_view_edit_history": true,
          "wiki": false
        },
        {
          "id": 1,
          "name": "system",
          "username": "system",
          "avatar_template":
              "/user_avatar/flutterforum.co/system/{size}/2_2.png",
          "created_at": "2019-06-01T06:53:37.480Z",
          "cooked":
              "<p>Discussion about this site, its organization, how it works, and how we can improve it.</p>",
          "post_number": 1,
          "post_type": 1,
          "updated_at": "2019-06-01T06:53:37.480Z",
          "reply_count": 0,
          "reply_to_post_number": null,
          "quote_count": 0,
          "incoming_link_count": 0,
          "reads": 0,
          "score": 0,
          "yours": false,
          "topic_id": 1,
          "topic_slug": "about-the-site-feedback-category",
          "topic_title": "About the Site Feedback category",
          "topic_html_title": "About the Site Feedback category",
          "category_id": 2,
          "display_username": "system",
          "primary_group_name": null,
          "primary_group_flair_url": null,
          "primary_group_flair_bg_color": null,
          "primary_group_flair_color": null,
          "version": 1,
          "can_edit": false,
          "can_delete": false,
          "can_recover": false,
          "can_wiki": false,
          "user_title": null,
          "raw":
              "Discussion about this site, its organization, how it works, and how we can improve it.",
          "actions_summary": [],
          "moderator": true,
          "admin": true,
          "staff": true,
          "user_id": -1,
          "hidden": false,
          "trust_level": 4,
          "deleted_at": null,
          "user_deleted": false,
          "edit_reason": null,
          "can_view_edit_history": true,
          "wiki": false
        }
      ]
    };
  }

  Widget build(BuildContext context) {
    _deviceSize = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: Text('List Gopal'),
        ),
        body: ListView.builder(
          itemCount: postListResponse["latest_posts"].length,
          itemBuilder: (BuildContext context, int index) {
            return postItem(index);
          },
        ));
  }

  Widget postItem(int index) {
    return Card(
        child: new Container(
            width: _deviceSize.width,
            margin: EdgeInsets.all(5),
            child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ListTile(
                    leading: profileLogo(postListResponse["latest_posts"][index]
                        ["avatar_template"]),
                    title: Text(
                        '${postListResponse["latest_posts"][index]["topic_title"]}'),
                    subtitle: Text('${postListResponse["latest_posts"][index]["name"]}'),
                    trailing: Text('${postListResponse["latest_posts"][index]["reply_count"]}'), //
                  ),
                ])));
  }

  Widget profileLogo(imageUrl) {
    return CircleAvatar(
      backgroundImage: NetworkImage(appUrl + imageUrl),
      backgroundColor: Colors.limeAccent,
      radius: 30.0,
    );
  }
}
