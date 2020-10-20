defmodule Moon.Assets.Icons.IconCursor do
  use Moon.StatelessComponent
  use Moon.Components.Context

  prop(color, :string)
  prop(background_color, :string)
  prop(font_size, :string)

  def render(assigns) do
    class_name =
      get_class_name(
        "Icons-IconCursor-#{assigns.color}-#{assigns.background_color}-#{assigns.font_size}"
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

    <svg class={{ class_name }} width="auto" height="1em"  viewBox="0 0 23 29" fill="none" xmlns="http://www.w3.org/2000/svg">  <path fill-rule="evenodd" clip-rule="evenodd" d="M0.500004 0.133975C0.823448 -0.0527652 1.224 -0.043702 1.53866 0.157477L21.8688 13.1554C22.1929 13.3625 22.3694 13.7372 22.3228 14.1189C22.2763 14.5007 22.0149 14.8219 21.6506 14.9452L15.1417 17.1471L18.8955 23.6488C19.1716 24.127 19.0078 24.7386 18.5295 25.0148L13.0327 28.1884C12.5544 28.4645 11.9428 28.3006 11.6667 27.8223L7.9129 21.3206L2.75156 25.8566C2.46268 26.1104 2.0538 26.1761 1.69992 26.0256C1.34603 25.875 1.10985 25.5348 1.09246 25.1506L0.00102769 1.04523C-0.0158652 0.672133 0.176561 0.320715 0.500004 0.133975ZM2.08621 2.88137L2.99618 22.979L7.50889 19.0131C7.73393 18.8153 8.03578 18.7289 8.3314 18.7775C8.62702 18.8262 8.88525 19.0048 9.03505 19.2642L12.8987 25.9563L16.6634 23.7827L12.7998 17.0907C12.65 16.8312 12.6244 16.5183 12.7301 16.2379C12.8358 15.9576 13.0616 15.7394 13.3454 15.6434L19.0363 13.7182L2.08621 2.88137Z" fill="currentColor"/> </svg>
    </Context>
    """
  end
end
