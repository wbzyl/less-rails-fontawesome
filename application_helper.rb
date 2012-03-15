module ApplicationHelper

  def ilink_to(*args, &block)
    if block_given?
      options      = args.first || {}
      html_options = args.second
      ilink_to(capture(&block), options, html_options)
    else
      icon, name   = args[0].strip.split(' ', 2)
      options      = args[1] || {}
      html_options = args[2]

      html_options = convert_options_to_data_attributes(options, html_options)
      url = url_for(options)

      href = html_options['href']
      tag_options = tag_options(html_options)

      href_attr = "href=\"#{ERB::Util.html_escape(url)}\"" unless href
      "<a #{href_attr}#{tag_options}><i class=\"icon-#{icon}\"></i> #{ERB::Util.html_escape(name.html_safe || url)}</a>".html_safe
    end
  end

  def ilink_to_unless
    if condition
      if block_given?
        block.arity <= 1 ? capture(name, &block) : capture(name, options, html_options, &block)
      else
        name
      end
    else
      ilink_to(name, options, html_options)
    end
  end

  def ilink_to_if(condition, name, options = {}, html_options = {}, &block)
    ilink_to_unless !condition, name, options, html_options, &block
  end

  def ilink_to_unless_current(name, options = {}, html_options = {}, &block)
    ilink_to_unless current_page?(options), name, options, html_options, &block
  end

end
