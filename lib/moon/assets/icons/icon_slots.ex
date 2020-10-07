defmodule Moon.Assets.Icons.IconSlots do
  use Moon.StatelessComponent

  property color, :string
  property background_color, :string

  def render(assigns) do
    class_name =
      get_class_name("Icons-IconSlots-#{assigns[:color]}-#{assigns[:background_color]}")

    ~H"""
    <style>
      .{{ class_name }} {
        vertical-align: middle;
        color: {{ @color }};
        background-color: {{ @background_color }};
      }
    </style>

    <svg class={{ class_name }} width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg"> <path d="M13.7692 17.7565C16.1058 17.7565 18 15.8623 18 13.5257C18 11.1891 16.1058 9.29492 13.7692 9.29492C11.4326 9.29492 9.53845 11.1891 9.53845 13.5257C9.53845 15.8623 11.4326 17.7565 13.7692 17.7565Z" stroke="currentColor" stroke-width="0.769231" stroke-miterlimit="10" stroke-linecap="round"/> <path d="M16.4616 13.5256C16.4616 15.0256 15.2693 16.2179 13.7693 16.2179" stroke="currentColor" stroke-width="0.769231" stroke-miterlimit="10" stroke-linecap="round"/> <path d="M8.76917 15.7178C8.3461 16.0255 7.80764 16.2178 7.23071 16.2178" stroke="currentColor" stroke-width="0.769231" stroke-miterlimit="10" stroke-linecap="round"/> <path d="M9.84615 16.9872C9.11538 17.5257 8.23077 17.8334 7.26923 17.8334C4.92308 17.8334 3 15.9488 3 13.5642C3 11.1795 4.92308 9.29492 7.26923 9.29492C8.26923 9.29492 9.19231 9.64108 9.92308 10.218" stroke="currentColor" stroke-width="0.769231" stroke-miterlimit="10" stroke-linecap="round"/> <path d="M13.9615 5.06396C13.4231 5.91012 13.1538 6.71781 13.0769 7.44858C12.8461 9.25627 13.5769 10.7178 13.5769 11.487" stroke="currentColor" stroke-width="0.769231" stroke-miterlimit="10" stroke-linecap="round"/> <path d="M7.4231 11.2179C8.53848 8.48714 10.6154 5.87175 12.6539 5.17944C14.1539 4.67944 15.7308 4.67944 16.8462 4.67944" stroke="currentColor" stroke-width="0.769231" stroke-miterlimit="10" stroke-linecap="round"/> <path d="M8.38463 7.44867C6.15386 6.98713 4.4231 5.14098 4.4231 5.14098C4.4231 5.14098 6.6154 2.44867 9.38463 2.37175C10.9616 2.33329 12.4231 3.10252 13.3846 3.79482" stroke="currentColor" stroke-width="0.769231" stroke-miterlimit="10" stroke-linecap="round"/> </svg>
    """
  end
end
