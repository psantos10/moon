defmodule Moon.Assets.Icons.IconSportsBasketBall do
  use Moon.StatelessComponent

  property color, :string
  property background_color, :string

  def render(assigns) do
    class_name =
      get_class_name(
        "Icons-IconSportsBasketBall-#{assigns[:color]}-#{assigns[:background_color]}"
      )

    ~H"""
    <style>
      .{{ class_name }} {
        vertical-align: 'middle';
        color: {{ @color }};
        background-color: {{ @background_color }};
      }
    </style>

    <svg class={{ class_name }} width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">  <path fill-rule="evenodd" clip-rule="evenodd" d="M10.403 12.8413V10.403H18.1736C18.0823 12.2793 17.3623 13.989 16.2135 15.3269C14.6295 13.8074 12.5974 12.938 10.403 12.8413ZM10.403 13.6473C12.3878 13.7429 14.2254 14.5349 15.6601 15.9104C14.2781 17.2344 12.4383 18.0747 10.403 18.1747V13.6473ZM9.59702 13.6473V18.1747C7.5606 18.0737 5.71976 17.2344 4.33779 15.9094C5.77242 14.5339 7.61755 13.7429 9.59702 13.6473ZM9.59702 6.35379C7.61218 6.25815 5.77242 5.46722 4.33887 4.09063C5.72084 2.76669 7.56167 1.9274 9.59702 1.82639V6.35379ZM10.403 6.35379V1.82639C12.4394 1.9274 14.2802 2.76776 15.6622 4.0917C14.2276 5.46722 12.3824 6.25815 10.403 6.35379ZM18.1736 9.59702H10.403V7.15976C12.5909 7.06412 14.6316 6.19367 16.2156 4.6763C17.3633 6.01313 18.0823 7.72287 18.1736 9.59702ZM3.78543 4.67415C5.36943 6.19367 7.40263 7.06412 9.59702 7.15976V9.59702H1.82639C1.91773 7.72179 2.63666 6.01313 3.78543 4.67415ZM1.82639 10.403H9.59702V12.8413C7.40907 12.937 5.36943 13.8063 3.78436 15.3259C2.63666 13.9869 1.91773 12.2782 1.82639 10.403ZM16.5423 16.1619C18.0608 14.55 19 12.3846 19 10C19 5.03737 14.9626 1 10 1C7.44346 1 5.13839 2.07678 3.49851 3.79403C3.49313 3.79833 3.48669 3.79618 3.48239 3.80048C3.47487 3.80693 3.47809 3.81767 3.47164 3.82304C1.94352 5.43713 1 7.60896 1 10C1 14.9637 5.03737 19 10 19C12.5501 19 14.8509 17.9297 16.4897 16.2199C16.4993 16.2124 16.5133 16.2156 16.5219 16.207C16.5348 16.1941 16.5316 16.1759 16.5423 16.1619Z" fill="currentColor"/> </svg>
    """
  end
end