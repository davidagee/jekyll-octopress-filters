Jekyll & Octopress Plugins
========================

A collection of plugins for Jekyll & Octopress 

## Overview

### Contains the following plugins:

+ __filter_posts__ : filters any key/value pair from an array of posts.
+ __filter_featured__ : sample shortcut plugin that will return all posts with "featured: true" in the front matter.

## Usage

### filter_posts

#### Example Usage:

```liquid
{{ assign posts = site.posts | filter_posts: 'key', 'value'}}
{% for post in posts %}
	...
{% endfor %}
```

### filter_featured

#### Example Usage:

```liquid
{{ assign posts = site.posts | filter_featured}}
{% for post in posts %}
	...
{% endfor %}
```