defmodule Moon.Assets.Icons.IconSportsPolitics do
  use Moon.StatelessComponent
  use Moon.Components.Context

  prop(color, :string)
  prop(background_color, :string)
  prop(font_size, :string)

  def render(assigns) do
    class_name =
      get_class_name(
        "Icons-IconSportsPolitics-#{assigns.color}-#{assigns.background_color}-#{
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

    <svg class={{ class_name }} width="1em" height="1em"  viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">  <path d="M19.6639 6.2813L10.2186 2.04692C10.0779 1.98442 9.91778 1.98442 9.77715 2.04692L0.335745 6.2813C0.105276 6.38676 -0.0236299 6.63676 0.0310576 6.88676C0.0857451 7.13286 0.304495 7.31255 0.558401 7.31255H2.17559V12.8204H2.15606C1.85918 12.8204 1.617 13.0625 1.617 13.3594V14.8438H1.3045C1.00762 14.8438 0.765433 15.086 0.765433 15.3829V17.461C0.765433 17.7579 1.00762 18 1.3045 18H18.6951C18.992 18 19.2342 17.7579 19.2342 17.461V15.3829C19.2342 15.086 18.992 14.8438 18.6951 14.8438H18.3826V13.3594C18.3826 13.0625 18.1404 12.8204 17.8436 12.8204H17.824V7.31255H19.4412C19.6951 7.31255 19.9139 7.13676 19.9686 6.88676C20.0232 6.63676 19.8943 6.38676 19.6639 6.2813ZM9.99981 3.12895L16.9295 6.23833H3.07012L9.99981 3.12895ZM14.4607 12.8204V7.31255H15.6326V12.8204H14.4607ZM5.53887 7.31255V12.8204H4.36699V7.31255H5.53887ZM6.1834 12.8204V7.31255H7.08574V12.8204H6.1834ZM7.73028 7.31255H8.90215V12.8204H7.73028V7.31255ZM9.55059 12.8204V7.31255H10.4529V12.8204H9.55059ZM11.0975 7.31255H12.2693V12.8204H11.0975V7.31255ZM12.9139 12.8204V7.31255H13.8162V12.8204H12.9139ZM2.82012 7.31255H3.72246V12.8204H2.82012V7.31255ZM18.1561 16.9219H1.84356V15.918H2.15606H17.8475H18.16V16.9219H18.1561ZM2.69121 14.8438V13.8946H17.3084V14.8438H2.69121ZM17.1795 12.8204H16.2772V7.31255H17.1795V12.8204Z" fill="currentColor"/> </svg>
    </Context>
    """
  end
end
