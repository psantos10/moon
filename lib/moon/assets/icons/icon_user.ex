defmodule Moon.Assets.Icons.IconUser do
  use Moon.StatelessComponent
  use Moon.Components.Context

  prop(color, :string)
  prop(background_color, :string)
  prop(font_size, :string)

  def render(assigns) do
    class_name =
      get_class_name(
        "Icons-IconUser-#{assigns.color}-#{assigns.background_color}-#{assigns.font_size}"
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

    <svg class={{ class_name }} width="1em" height="1em" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">  <path d="M9.93974 9.57431C12.327 9.57431 14.2623 7.65488 14.2623 5.28715C14.2623 2.91942 12.327 1 9.93974 1C7.55246 1 5.61719 2.91942 5.61719 5.28715C5.61719 7.65488 7.55246 9.57431 9.93974 9.57431Z" stroke="currentColor" stroke- stroke-miterlimit="10" stroke-linecap="round"/>  <path d="M18.4711 16.2306L18.1299 14.4255C17.7886 12.7332 16.4236 11.605 14.9448 11.605H13.1248C12.8973 11.605 12.5561 11.605 12.3286 11.7178C11.646 11.9434 10.8498 12.1691 9.93978 12.1691C9.02976 12.1691 8.34726 12.0563 7.66475 11.8306C7.43724 11.7178 7.20974 11.7178 6.86849 11.7178H5.04846C3.45594 11.7178 2.20468 12.846 1.86342 14.3127L1.52217 16.2306C1.40842 16.7947 1.74967 17.246 2.20468 17.4716C4.47971 18.3742 11.191 20.4049 17.9024 17.4716C18.3574 17.246 18.5849 16.7947 18.4711 16.2306Z" stroke="currentColor" stroke-width="1.1" stroke-miterlimit="10" stroke-linecap="round"/> </svg>
    </Context>
    """
  end
end
