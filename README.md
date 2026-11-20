# bituon_mobprog

A new Flutter project.

Laboratory Discussion
How the Image was Integrated into the Newsfeed Card and Made Dynamic
In this activity, I integrated the image into the newsfeed_card.dart by adding an image section inside the news feed card. Instead of placing the image directly everywhere it was needed, I created a separate widget for displaying the post image. This made the code cleaner, easier to read, and more organized because the image-related code was kept in one place. The image is displayed using an asset file stored in the project's assets/images folder and is shown only when the post contains an image.

To make the image dynamic, I used the hasImage variable. This variable determines whether an image should be displayed or not. When hasImage is set to true, the image widget is shown inside the post. If it is set to false, the post will only display text content. This approach allows different posts to have different content without creating separate layouts for each one.

Using a reusable image widget and a condition for displaying images made the news feed more flexible and realistic. It also follows good programming practice by reducing repeated code and making future updates easier. If additional images are added in the future, only the image path or value of hasImage needs to be changed, making the application more scalable and easier to maintain.
