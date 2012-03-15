# Font Awesome + Less + Rails 3.2+ Asset Pipeline

With LESS and fonts from [Font Awesome](http://fortawesome.github.com/Font-Awesome),
*less-rails-fontawesome* is a gem to integrate Font Awesome to your Rails 3.2+ application.


## Installation

Add the gem to your *assets* group in the *Gemfile*:

    gem 'less-rails-fontawesome', :group => :assets

Then in your *app/assets/stylesheets/application.css.less*:

    @import 'fontawesome';

You can also use it with the [less-rails-bootstrap](https://github.com/metaskills/less-rails-bootstrap) gem.
Just import *fontawesome* right after *twitter/bootstrap*:

    @import 'twitter/bootstrap';
    @import 'fontawesome';


## Helper methods

To place Font Awesome icon add to *i* element and set *class*
attribute to an icon name, for example:

    <i class="icon-trash"></i>

To ease placing Font Awesome icons, I defined a few helper methods:
[application_helper.rb]()



##


## License

The font and LESS from [Font Awesome](http://fortawesome.github.com/Font-Awesome) are under CC-BY-3.0.

Others are under MIT license.
