# Font Awesome + Less + Rails 3.2+ Asset Pipeline

With LESS and fonts from [Font Awesome](http://fortawesome.github.com/Font-Awesome),
*less-rails-fontawesome* is a gem to integrate Font Awesome to your Rails 3.2+ application.


## Installation

Add the gem to your *assets* group in the *Gemfile*:

    gem 'less-rails-fontawesome', :group => :assets

Then in your `app/assets/stylesheets/application.css.less`:

    @import 'fontawesome';

You can also use it with the [less-rails-bootstrap](https://github.com/metaskills/less-rails-bootstrap) gem.
Just import *fontawesome* right after *bootstrap*:

    @import 'twitter/bootstrap';
    @import 'fontawesome';


## License

The font and LESS from [Font Awesome](http://fortawesome.github.com/Font-Awesome) are under CC-BY-3.0.

Others are under MIT license.
