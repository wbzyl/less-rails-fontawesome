## Font Awesome + Less + Rails Asset Pipeline

With LESS and fonts from [Font Awesome](http://fortawesome.github.io/Font-Awesome/),
*less-rails-fontawesome* is a gem to integrate Font Awesome
to your Rails application. It works with Rails 4.

### Updates

November 21, 2013: Version 0.7.0 is using Font Awesome 4.0

November 21, 2013: Move files from *vendor/* to *app/* folder.<br>
 Now these files are automatically precompiled.

May 16, 2013: Now using Font Awesome 3.1.1 and works with Rails 4!

March 23, 2013: Now using Font Awesome 3.0.2!

January 2, 2013: Now using Font Awesome 3.0!

June 6 2012: Now using Font Awesome 2.0!

### Installation

Add the gem to your *assets* group in the *Gemfile*:

```ruby
gem 'therubyracer'
gem 'less-rails'
gem 'less-rails-fontawesome'
```

Get the full Fontawesome stylesheet with a single line in your *application.css*:

```css
 *= require font-awesome/font-awesome
```

Alternatively, remove *app/assets/stylesheets/application.css*
and create *app/assets/stylesheets/application.less* with the content

```css
@import 'font-awesome/font-awesome';
```

You can also use it with
the [less-rails-bootstrap](https://github.com/metaskills/less-rails-bootstrap) gem.
Just import *fontawesome* right after *twitter/bootstrap*:

```css
@import 'twitter/bootstrap';
@import 'font-awesome/font-awesome';
```

<!-- [Simple demo](http://sharp-ocean-6085.herokuapp.com/). -->

## Helper methods

### for version 0.7.0

To place Font Awesome icon add *i* element and set its *class*
attribute to a icon name, [for example](http://fontawesome.io/examples/):

```html
<i class="fa fa-camera-retro"></i>
```

To ease placing icons in Rails *link_to* helper use
the *ilink_to* helper method.

For example, to place the *fa-upload* icon next to *Edit* write something like:

```rhtml
<%= ilink_to "upload", "Edit", edit_post_path(post), class: 'btn btn-mini' %>
```

or to place *trash-o* next to text *Destroy* button write:

```rhtml
<%= ilink_to "trash-o", "Destroy", post, data: '{confirm: "Are you sure?"}',
       method: :delete, class: 'btn btn-mini btn-danger'%>
```
(precede the link text with the icon name stripped off *fa-* prefix)


### for versions prior to 0.7.0

To place Font Awesome icon add *i* element and set its *class*
attribute to a icon name, for example:

```html
<i class="icon-trash"></i>
```

To ease placing icons in Rails *link_to* helper use
the *ilink_to* helper method.

For example, to place the *icon-upload-alt* icon next to *Edit* write something like:

```rhtml
<%= ilink_to "upload-alt", "Edit", edit_post_path(post), class: 'btn btn-mini' %>
```

or to place *icon-trash* next to text *Destroy* button write:

```rhtml
<%= ilink_to "trash", "Destroy", post, data: '{confirm: "Are you sure?"}',
       method: :delete, class: 'btn btn-mini btn-danger'%>
```
(precede the link text with the icon name stripped off *icon-* prefix)


## License

The font and LESS from [Font Awesome](http://fortawesome.github.com/Font-Awesome) are under CC-BY-3.0.

Others are under MIT license.
