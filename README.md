# Coding Assessment
This series of challenges will help us understand better your skills and capabilities.  Please follow the instructions. There is no one-only right answer. Also, adding tests for some of the challenges is recommended to make sure your code does what we asked for.
Anything beyond what is asked for is not mandatory. However, adding value and recommendations will be evaluated positively. We encourage you to do so, however, not before finishing the requirements since time to complete the assessment will be also taken into consideration. 

# Tagging
Create a tagging system for posts. 

When a new post is being created, an input field lets you add new tags. The input gives you suggestions on existing tags as you type. If you click on a suggestion, the tag is added (visible in the form while you are creating the post). If what you type doesn't match any existing tags, you can still hit enter and that tag will be added, too. You can take the taggoing system in Stackoverflow as a reference (no need to make the selected tags to be added inside the input box).
In the post index, put a list of the most common tags, ordered by usage. Create a scope for that.
Make the tag model polymorphic in case we want to add tags to other models later on.

Lastly, create a service that can post to a Slack channel. It is not important that it works, but that the design is right. You can mock the response from Slack as if the client was making the HTTP request. 

# Bugs
You probably noticed the "New post" link doesn't work. Please, fix it. Also, there might be issues with how we are rendering a new post. Can you identify what is it?
