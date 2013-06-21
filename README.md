## Font Awesome + Less + Rails Asset Pipeline

With LESS and fonts from [Font Awesome](http://fortawesome.github.io/Font-Awesome/),
*less-rails-fontawesome* is a gem to integrate Font Awesome
to your Rails application. It works wit Rails 3.2 and 4.

### Updates

May 16, 2013: Now using Font Awesome 3.1.1 and works with Rails 4!

March 23, 2013: Now using Font Awesome 3.0.2!

January 2, 2013: Now using Font Awesome 3.0!

June 6 2012: Now using Font Awesome 2.0!

### Installation

Add the gem to your *assets* group in the *Gemfile*:

```ruby
gem 'therubyracer'
gem 'less'
gem 'less-rails'
gem 'less-rails-fontawesome'
```

Then in your *app/assets/stylesheets/application.css.less*:

```css
@import 'font-awesome/font-awesome';
@import 'font-awesome/font-awesome-ie7';
```

You can also use it with the [less-rails-bootstrap](https://github.com/metaskills/less-rails-bootstrap) gem.
Just import *fontawesome* right after *twitter/bootstrap*:

```css
@import 'twitter/bootstrap';
@import 'font-awesome/font-awesome';
@import 'font-awesome/font-awesome-ie7';
```

<!-- [Simple demo](http://sharp-ocean-6085.herokuapp.com/). -->


## Helper methods

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
<%= ilink_to "trash", "Destroy", post, confirm: 'Are you sure?', method: :delete, class: 'btn btn-mini btn-danger'%>
```

(precede the link text with the icon name stripped off *icon-* prefix)


## License

The font and LESS from [Font Awesome](http://fortawesome.github.com/Font-Awesome) are under CC-BY-3.0.

Others are under MIT license.
