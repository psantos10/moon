defmodule Moon.Assets.Icons.IconSuccessCircle do
  use Moon.StatelessComponent

  property color, :string
  property background_color, :string

  def render(assigns) do
    class_name =
      get_class_name("Icons-IconSuccessCircle-#{assigns[:color]}-#{assigns[:background_color]}")

    ~H"""
    <style>
      .{{ class_name }} {
        vertical-align: middle;
        color: {{ @color }};
        background-color: {{ @background_color }};
      }
    </style>

    <svg class={{ class_name }} width="28" height="28" viewBox="0 0 28 28" fill="none" xmlns="http://www.w3.org/2000/svg">   <path d="M20.727 10.6866C21.1062 10.2851 21.0881 9.6522 20.6866 9.27299C20.2851 8.89378 19.6522 8.91186 19.273 9.31338L12.4444 16.5436L8.72702 12.6075C8.3478 12.206 7.7149 12.1879 7.31338 12.5671C6.91186 12.9463 6.89378 13.5792 7.27299 13.9807L11.7174 18.6866C11.9063 18.8866 12.1693 19 12.4444 19C12.7196 19 12.9826 18.8866 13.1715 18.6866L20.727 10.6866Z" fill="currentColor"/>   <path fill-rule="evenodd" clip-rule="evenodd" d="M14 0C6.26801 0 0 6.26801 0 14C0 21.732 6.26801 28 14 28C21.732 28 28 21.732 28 14C28 6.26801 21.732 0 14 0ZM2 14C2 7.37258 7.37258 2 14 2C20.6274 2 26 7.37258 26 14C26 20.6274 20.6274 26 14 26C7.37258 26 2 20.6274 2 14Z" fill="currentColor"/> </svg>
    """
  end
end
