defmodule Moon.Components.Select do
  @moduledoc false

  use Moon.StatelessComponent

  alias Moon.Components.FieldLabel

  prop field, :atom
  prop label, :string
  prop options, :any, default: []
  prop value, :any
  prop prompt, :string
  prop error, :string
  prop rounded, :boolean, default: true
  prop disabled, :boolean
  prop required, :boolean
  prop flex, :boolean
  prop input_grow, :boolean
  prop icon, :string
  prop full_width, :boolean
  prop class, :string

  def render(assigns) do
    options_with_selected =
      Enum.map(assigns.options, fn row ->
        [
          key: row[:key],
          value: row[:value],
          selected: row[:value] == assigns.value,
          disabled: row[:disabled]
        ]
      end)

    select = ~F"""
    <Surface.Components.Form.Select
      class={
        "text-trunks-100 pr-3.5 bg-no-repeat bg-goku-100 hover:bg-goku-120
               hover:cursor-pointer focus:cursor-pointer border border-solid
               border-beerus-100 focus:text-bulma-100 disabled:cursor-not-allowed focus:border-piccolo-120 focus:outline-none",
        "rounded-moon-s-sm": @rounded,
        "#{@class}": true
      }
      field={@field}
      options={options_with_selected}
      opts={[prompt: @prompt, disabled: @disabled]}
    />
    """

    ~F"""
    {#if @label}
      <FieldLabel text={@label}>
        <div class="relative mt-2">
          {select}
        </div>
      </FieldLabel>
    {#else}
      {select}
    {/if}
    """
  end
end
