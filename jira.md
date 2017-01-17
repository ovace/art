# JIRA

Deal with the pain.

- `project = PROJECTCODE`
- `summary ~ keyword`
- `status in (open, "in progress", resolved)`: those are the custom workflow keywords. Yes, different projects will randomly choose different synonyms.
- `reporter = userid`, `reporter = currentUser()`

## Jira issue markup

Images sizes:

<http://stackoverflow.com/questions/27935678/how-to-make-an-image-clickable-in-jira-comment-so-it-pops-up-as-if-you-click-on>

Increases the sub-sampled thumbnail...

    !my-screenshot-image.jpg|thumbnail, width=800px!
