defmodule Moon.Assets.Icons.IconSportsVolleyBall do
  use Moon.StatelessComponent
  use Moon.Components.Context

  prop(color, :string)
  prop(background_color, :string)
  prop(font_size, :string)

  def render(assigns) do
    class_name =
      get_class_name(
        "Icons-IconSportsVolleyBall-#{assigns.color}-#{assigns.background_color}-#{
          assigns.font_size
        }"
      )

    ~H"""
    <Context get={{ theme: theme }}>
    <style>
      .{{ class_name }} {
        vertical-align: middle;
        width: 1em;
        color: {{ get_color(@color, theme) }};
        background-color: {{ get_color(@background_color, theme) }};
        font-size: {{ @font_size }};
        display: inline-block;
        overflow: hidden;
        
      }
    </style>

    <svg class={{ class_name }} width="1em" height="1em"  viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">  <path fill-rule="evenodd" clip-rule="evenodd" d="M15.44 16.1105V14.143C15.5539 13.927 16.3254 12.3732 16.3104 10.0424C16.3114 10.0274 16.3114 10.0124 16.3114 9.99946L16.3125 9.96508C16.3125 9.95326 16.3114 9.93929 16.3104 9.92639C16.3179 7.61286 15.5539 6.07301 15.44 5.85702V3.8895C17.1249 5.39174 18.1941 7.57095 18.1941 9.99946C18.1941 12.429 17.1249 14.6083 15.44 16.1105ZM8.22536 17.9942V15.6237C8.76586 15.7118 9.3472 15.7752 10.0005 15.7752C10.6302 15.7752 11.1912 15.7151 11.7177 15.6323V18.0093C11.1632 18.1285 10.5894 18.193 10.0005 18.193C9.39019 18.193 8.79703 18.121 8.22536 17.9942ZM1.80592 9.99946C1.80592 7.58492 2.86329 5.41753 4.53101 3.91636V5.9129C4.33974 6.30189 3.67351 7.8095 3.68963 9.9683H3.69285C3.68963 9.99087 3.68748 10.0134 3.68748 10.036C3.68748 10.0478 3.68856 10.0618 3.68963 10.0747C3.68211 12.2109 4.34082 13.7013 4.53101 14.0871V16.0836C2.86329 14.5825 1.80592 12.4151 1.80592 9.99946ZM11.7456 1.99827V4.37198C11.2126 4.28709 10.6421 4.22369 10.0005 4.22369C9.35795 4.22369 8.78736 4.28709 8.25437 4.37198V1.99827C8.81744 1.87577 9.39986 1.80592 10.0005 1.80592C10.6001 1.80592 11.1826 1.87577 11.7456 1.99827ZM14.6341 5.28643C14.1677 5.0425 13.4639 4.74807 12.5397 4.52564C12.543 4.50522 12.5515 4.48696 12.5515 4.46546V2.21855C13.2984 2.46463 13.999 2.81279 14.6341 3.24906V5.28643ZM4.69435 7.98466C4.88132 7.09599 5.14781 6.48994 5.24775 6.28255C5.60665 6.044 7.29156 5.02961 10.0005 5.02961C12.6665 5.02961 14.3547 6.02358 14.7383 6.27395C14.7458 6.28255 14.7523 6.29222 14.7608 6.30082C14.8651 6.5211 15.1219 7.11641 15.3057 7.98466H4.69435ZM15.5044 9.96185C15.5044 9.9726 15.5044 9.98442 15.5055 9.99516V9.99946V10.0038C15.5044 10.0156 15.5044 10.0274 15.5044 10.0392C15.5066 10.4583 15.4776 10.8462 15.4346 11.2083H4.56432C4.52134 10.8473 4.49233 10.4594 4.49555 10.0392C4.49555 10.0263 4.49555 10.0134 4.49448 10.0005C4.49555 9.98872 4.49555 9.97475 4.49555 9.96185C4.49233 9.54277 4.52242 9.15378 4.5654 8.79058H15.4346C15.4776 9.15378 15.5066 9.54277 15.5044 9.96185ZM5.33694 5.30147V3.27163C5.97952 2.82461 6.68981 2.46893 7.44845 2.21855V4.52886C6.50928 4.7556 5.80007 5.05755 5.33694 5.30147ZM7.41944 17.7707C6.67154 17.5214 5.972 17.17 5.33694 16.7284V14.6985C5.80007 14.9425 6.50928 15.2433 7.44738 15.4701C7.43126 15.5141 7.41944 15.5592 7.41944 15.6076V17.7707ZM14.7523 13.7164C14.3933 13.956 12.7084 14.9693 10.0005 14.9693C7.30661 14.9693 5.60773 13.9539 5.24667 13.7153C5.14674 13.509 4.88025 12.9051 4.69327 12.0143H15.3057C15.1187 12.904 14.8522 13.5101 14.7523 13.7164ZM14.6341 14.7136V16.7509C13.9904 17.1937 13.2812 17.5461 12.5236 17.7911V15.4787C13.4553 15.2562 14.1655 14.9586 14.6341 14.7136ZM12.3302 1.317C12.2754 1.28906 12.2152 1.26864 12.1486 1.26864C12.1486 1.26864 12.1475 1.26972 12.1464 1.26972C11.4566 1.09993 10.7409 1 10.0005 1C5.03713 1 1 5.03713 1 9.99946C1 14.9629 5.03713 18.9989 10.0005 18.9989C14.9629 18.9989 19 14.9629 19 9.99946C19 5.84413 16.1653 2.3475 12.3302 1.317Z" fill="currentColor"/> </svg>
    </Context>
    """
  end
end
