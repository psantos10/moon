defmodule Moon.Assets.Icons.IconCurrencyIQD do
  use Moon.StatelessComponent
  use Moon.Components.Context

  prop(color, :string)
  prop(background_color, :string)
  prop(font_size, :string)

  def render(assigns) do
    class_name =
      get_class_name(
        "Icons-IconCurrencyIQD-#{assigns.color}-#{assigns.background_color}-#{assigns.font_size}"
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

    <svg class={{ class_name }} width="1em" height="1em"  viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg"> <path d="M3.20225 3C4.11555 3 4.91468 3.22249 5.59966 3.66746C6.29604 4.10131 6.83261 4.75765 7.20934 5.63647C7.59749 6.5153 7.79157 7.59436 7.79157 8.87366V11.7271H0V9.6913H5.49691V9.09058C5.49691 7.64442 5.21721 6.61541 4.65782 6.00358C4.09842 5.38061 3.43057 5.06913 2.65427 5.06913H0.924714L0.75347 3.31704C1.10737 3.23917 1.50694 3.16686 1.95217 3.10012C2.40882 3.03337 2.82551 3 3.20225 3Z" fill="currentColor"/> <path d="M8.80584 8.95709H11.2717V11.7271H8.80584V8.95709Z" fill="currentColor"/> <path d="M16.8491 14.9976C17.1231 14.9976 17.5284 14.9754 18.065 14.9309C18.6015 14.8864 19.1552 14.8196 19.726 14.7306L19.9658 16.466C19.3949 16.6106 18.7785 16.733 18.1163 16.8331C17.4542 16.9444 16.8777 17 16.3868 17C15.131 17 14.1606 16.6385 13.4756 15.9154C12.7907 15.2034 12.4482 14.2245 12.4482 12.9785C12.4482 11.41 13.0019 10.3588 14.1092 9.82479C13.6868 9.03496 13.4756 8.19507 13.4756 7.30512C13.4756 6.32618 13.6868 5.53079 14.1092 4.91895C14.543 4.29599 15.0739 3.85101 15.7018 3.58403C16.3297 3.31704 16.9519 3.18355 17.5683 3.18355C17.9108 3.18355 18.299 3.22249 18.7328 3.30036C19.178 3.37823 19.6004 3.48947 20 3.63409L19.8973 5.7199C19.0182 5.38617 18.3104 5.21931 17.7738 5.21931C17.2487 5.21931 16.7806 5.38617 16.3696 5.7199C15.9701 6.05364 15.7703 6.61541 15.7703 7.40524C15.7703 8.22845 16.0214 8.91259 16.5238 9.45769C16.9576 9.46881 17.4028 9.51331 17.8595 9.59118C18.3161 9.65793 18.6586 9.73023 18.8869 9.8081V11.7271C18.6243 11.6492 18.2476 11.5769 17.7567 11.5101C17.2772 11.4323 16.8834 11.3933 16.5751 11.3933C16.0043 11.3933 15.5534 11.5379 15.2223 11.8272C14.9027 12.1275 14.7428 12.5614 14.7428 13.1287C14.7428 13.6961 14.9141 14.1466 15.2566 14.4803C15.6105 14.8252 16.1413 14.9976 16.8491 14.9976Z" fill="currentColor"/> </svg>
    </Context>
    """
  end
end
