defmodule Moon.Assets.Icons.IconCurrencyAda do
  use Moon.StatelessComponent

  prop(color, :string, values: Moon.colors())
  prop(background_color, :string, values: Moon.colors())
  prop(font_size, :string)
  prop(class, :string)

  def render(assigns) do
    ~H"""
    {{ asset_import @socket, "js/assets/icon" }}

    <svg class="moon-icon {{ @class }}" style={{ get_style(color: @color, background_color: @background_color, font_size: @font_size) }}>
      <use href="/moon/svgs/icons/icon-currency-ada.svg#item"></use>
    </svg>

    """
  end
end