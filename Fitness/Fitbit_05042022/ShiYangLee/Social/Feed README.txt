Social Feed Data Export

The Social Feed category of your data export includes all of the content you have posted to the Fitbit community Feed and Groups. This includes cheers, comments, posts, groups, and images.

Files Included:
----------

Feed Cheers.csv

This is the list of all Posts and Comments you have cheered

    post_id         - the id of the post
    comment_id      - if a comment was cheered, the id of the comment
    author_id       - the id of the user whose content you cheered
    author_name     - the name of the user whose content you cheered

----------

Feed Comments.csv

This is the list of all Comments you have made on a Post

    id              - the id of the comment
    content         - the text content of the comment
    timestamp       - the date and time the comment was made
    post_id         - the id of the post the comment was replying to

----------

Feed Posts.csv

This is the list of all your Posts made to the community Feed and any to group you have been a apart of

    id              - the id of the post
    text_content    - the text content of the post
    timestamp       - the date and time the post was made
    comment_count   - the number of comments made on the post
    cheer_count     - the number of Cheers
    type            - the type of post (mostly used for internal purposes)
    group_id        - if posted to a group, the id of the group
    image_filename  - if an image was included, the name of the image
    embedded_url    - a shared url

----------

Groups.csv

This is the list of all Groups you are a member of. description, avatar_url, cover_image_url, and members will only be populated for user created groups (i.e. groups with type "Closed group")

    id              - the id of the group
    name            - the name of the group
    description     - the description of the group
    avatar_url      - the url of the group avatar image
    cover_image_url - the url of the group cover image
    type            - the type of the group (e.g. "Public group")
    members         - the number of users who have joined the group

----------

Images

Any images you posted as part of a Post will be included separately in a Media/Posts subdirectory
Any avatar/cover images for user created groups you are a member of will be included separately in a Media/Groups subdirectory
