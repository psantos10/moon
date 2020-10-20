defmodule Moon.Assets.Icons.IconBitcoinTalk do
  use Moon.StatelessComponent
  use Moon.Components.Context

  prop(color, :string)
  prop(background_color, :string)
  prop(font_size, :string)

  def render(assigns) do
    class_name =
      get_class_name(
        "Icons-IconBitcoinTalk-#{assigns.color}-#{assigns.background_color}-#{assigns.font_size}"
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

    <svg class={{ class_name }} width="1em" height="1em"  viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg"> <rect width="20" height="20" rx="10" fill="#FDB500"/> <rect x="1.75" y="1.75" width="16.5" height="16.5" rx="8.25" fill="#FDB500" stroke="white" stroke-width="1.5"/> <path d="M13.0198 9.55433C13.6119 9.22749 13.9823 8.65186 13.8958 7.6929C13.7792 6.38239 12.7351 5.94294 11.417 5.81779L11.4167 4H10.3954L10.3951 5.76999C10.1264 5.76999 9.8525 5.77571 9.57982 5.78164L9.57959 4.00024L8.55923 4.00014L8.55904 5.81748C8.3379 5.82238 8.12073 5.82703 7.90868 5.82703V5.82165L6.5 5.82103L6.50019 7.00261C6.50019 7.00261 7.25439 6.98724 7.24197 7.00216C7.65548 7.00247 7.7905 7.26269 7.82934 7.48731L7.82965 9.55816V12.467C7.81145 12.608 7.73483 12.8332 7.44569 12.8336C7.45885 12.8462 6.70277 12.8335 6.70277 12.8335L6.50019 14.1548H7.82902C8.07663 14.1551 8.31991 14.1593 8.55859 14.1613L8.55948 15.9997L9.57959 16L9.57931 14.1809C9.85996 14.1871 10.1309 14.1898 10.3955 14.1894L10.3952 16H11.4164L11.417 14.1647C13.1337 14.0579 14.3355 13.5892 14.4849 11.8422C14.6053 10.4356 13.9945 9.8078 13.0198 9.55433ZM9.60422 7.08237C10.1802 7.08237 11.9917 6.8836 11.992 8.1875C11.9917 9.43756 10.1808 9.29153 9.60422 9.29153V7.08237ZM9.60378 12.8426L9.60422 10.4068C10.2963 10.4066 12.4669 10.191 12.4672 11.6241C12.4674 12.9985 10.2963 12.842 9.60378 12.8426Z" fill="white"/> </svg>
    </Context>
    """
  end
end
