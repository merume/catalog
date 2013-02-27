# encoding: utf-8

module ProductDecorator
  def display_price
    number_to_currency(price, unit: '￥', precision: 0)
  end

  def display_image
    image_tag(image_url) if image?
  end

  def display_description
    simple_format(description)
  end

  def display_vendible
    unless vendible
      content_tag :span, "販売中止", class: "label label-important"
    else
      ''
    end
  end

  def display_recommend
    if recommend
      content_tag :span, 'おすすめ', class: "label label-info"
    else
      ''
    end
  end
end
