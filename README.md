# Font Awesome + SASS + Rails

With LESS and fonts from [Font Awesome](http://fortawesome.github.com/Font-Awesome),
`font-awesome-sass-rails` is a gem to integrate Font Awesome to your Rails 3.2+ application.


## Installation

Add `font-awesome-sass-rails` gem to your `assets` group in the `Gemfile`:

    gem 'less-rails-fontawesome', :group => :assets

Then in your `app/assets/stylesheets/application.css.less`:

    @import 'fontawesome';

That's it!

You can also use it with the LESS-converted Bootstrap gem,
like [less-rails-bootstrap](https://github.com/metaskills/less-rails-bootstrap).
Just import font-awesome right after bootstrap:

    @import 'bootstrap';
    @import 'fontawesome';


## License

The font and LESS from [Font Awesome](http://fortawesome.github.com/Font-Awesome) are under CC-BY-3.0.

Others are under MIT license.
