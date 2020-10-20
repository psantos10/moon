defmodule Moon.Assets.Icons.IconWalletRounded do
  use Moon.StatelessComponent
  use Moon.Components.Context

  prop(color, :string)
  prop(background_color, :string)
  prop(font_size, :string)

  def render(assigns) do
    class_name =
      get_class_name(
        "Icons-IconWalletRounded-#{assigns.color}-#{assigns.background_color}-#{assigns.font_size}"
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

    <svg class={{ class_name }} width="1em" height="1em"  viewBox="0 0 28 28" fill="none" xmlns="http://www.w3.org/2000/svg">  <path d="M17 14C17 12.8954 17.8954 12 19 12C20.1046 12 21 12.8954 21 14C21 15.1046 20.1046 16 19 16C17.8954 16 17 15.1046 17 14Z" fill="currentColor"/>  <path fill-rule="evenodd" clip-rule="evenodd" d="M28 23C28 25.7614 25.7614 28 23 28L5 28C2.23858 28 0 25.7614 0 23V5C0 2.23857 2.23858 -6.07322e-06 5.00001 0L23 3.92994e-05C25.7614 4.53209e-05 28 2.23862 28 5.00004V23ZM26 8.00001V5.00004C26 3.34319 24.6569 2.00004 23 2.00004L5.00001 2C3.34315 2 2 3.34314 2 5L2 23C2 24.6568 3.34315 26 5 26L23 26C24.6569 26 26 24.6568 26 23V20L18 20C15.2386 20 13 17.7614 13 15V13C13 10.2386 15.2386 8 18 8L26 8.00001ZM26 10L18 10C16.3431 10 15 11.3431 15 13V15C15 16.6568 16.3431 18 18 18L26 18V10Z" fill="currentColor"/> </svg>
    </Context>
    """
  end
end
