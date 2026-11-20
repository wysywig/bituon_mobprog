# bituon_mobprog

A new Flutter project.

Laboratory Discussion
How the Image was Integrated into the Newsfeed Card and Made Dynamic
The image was integrated into the NewsFeedCard widget by using a custom widget called PostImage. Instead of placing the image directly inside the card, a reusable widget was created to display post images. This allows the image component to be reused by different posts without repeating code.
To make the image dynamic, a boolean variable named hasImage was used. The image is only displayed when the variable is set to true.