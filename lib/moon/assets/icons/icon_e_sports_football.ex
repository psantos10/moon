defmodule Moon.Assets.Icons.IconESportsFootball do
  use Moon.StatelessComponent
  use Moon.Components.Context

  prop(color, :string)
  prop(background_color, :string)
  prop(font_size, :string)

  def render(assigns) do
    class_name =
      get_class_name(
        "Icons-IconESportsFootball-#{assigns.color}-#{assigns.background_color}-#{
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

    <svg class={{ class_name }} width="1em" height="1em"  viewBox="0 0 28 28" fill="none" xmlns="http://www.w3.org/2000/svg"> <path fill-rule="evenodd" clip-rule="evenodd" d="M4 4V24H10.1553V16.8034H14.3963L16.103 12.4121H10.1553V8.33759H17.3961L19 4H4Z" fill="#FF5565"/> <path fill-rule="evenodd" clip-rule="evenodd" d="M16 23.7533C17.3294 24.1791 18.7629 24.0503 20.0051 23.3935C21.2472 22.7367 22.2032 21.6018 22.6761 20.2229C23.149 18.8441 23.1026 17.3262 22.5466 15.9824C21.9906 14.6385 20.9673 13.571 19.6876 13L16 23.7533Z" fill="#FF5565"/> </svg>
    </Context>
    """
  end
end
