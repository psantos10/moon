defmodule Moon.Assets.Icons.IconCurrencyMXN do
  use Moon.StatelessComponent

  property color, :string
  property background_color, :string

  def render(assigns) do
    class_name =
      get_class_name("Icons-IconCurrencyMXN-#{assigns[:color]}-#{assigns[:background_color]}")

    ~H"""
    <style>
      .{{ class_name }} {
        vertical-align: 'middle';
        color: {{ @color }};
        background-color: {{ @background_color }};
      }
    </style>

    <svg class={{ class_name }} width="34" height="59" viewBox="0 0 34 59" fill="none" xmlns="http://www.w3.org/2000/svg"> <path d="M33.1764 38.072C33.1764 29.56 27.6084 27.256 18.7124 24.568C14.4884 23.288 13.1444 22.2 13.1444 20.664C13.1444 19.064 14.4244 18.104 17.1124 18.104C19.7364 18.104 22.8084 19 26.4564 21.56L32.4084 14.136C29.3364 11.64 24.9844 9.52803 20.7604 8.69603V0.952026H13.8484V8.44003C6.29645 9.46403 1.94445 14.584 1.94445 21.368C1.94445 29.688 8.40845 32.312 15.7044 34.488C20.6324 35.96 21.8484 37.048 21.8484 38.904C21.8484 40.568 20.3764 41.784 17.8804 41.784C14.8084 41.784 10.5844 40.376 7.00045 36.984L0.856445 44.472C4.63245 48.248 9.04845 50.36 13.7844 51.128V58.488H20.6324V51.192C28.2484 50.168 33.1764 45.368 33.1764 38.072Z" fill="currentColor"/> </svg>
    """
  end
end