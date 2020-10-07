defmodule Moon.Assets.Icons.IconTable do
  use Moon.StatelessComponent

  property color, :string
  property background_color, :string

  def render(assigns) do
    class_name =
      get_class_name("Icons-IconTable-#{assigns[:color]}-#{assigns[:background_color]}")

    ~H"""
    <style>
      .{{ class_name }} {
        vertical-align: 'middle';
        color: {{ @color }};
        background-color: {{ @background_color }};
      }
    </style>

    <svg class={{ class_name }} width="28" height="28" viewBox="0 0 28 28" fill="none" xmlns="http://www.w3.org/2000/svg">  <path fill-rule="evenodd" clip-rule="evenodd" d="M12 22H20V27C20 27.5523 20.4477 28 21 28C21.5523 28 22 27.5523 22 27V22H27C27.5523 22 28 21.5523 28 21C28 20.4477 27.5523 20 27 20H22L22 12H27C27.5523 12 28 11.5523 28 11C28 10.4477 27.5523 10 27 10H22V2H27C27.5523 2 28 1.55228 28 1C28 0.447715 27.5523 0 27 0H3C1.34315 0 0 1.34315 0 3V27C0 27.5523 0.447715 28 1 28C1.55228 28 2 27.5523 2 27V22H10V27C10 27.5523 10.4477 28 11 28C11.5523 28 12 27.5523 12 27V22ZM3 2C2.44772 2 2 2.44772 2 3V10H10V2L3 2ZM12 2V10H20V2L12 2ZM10 12H2V20H10L10 12ZM12 20L12 12H20L20 20H12Z" fill="currentColor"/> </svg>
    """
  end
end