defmodule Moon.Assets.Icons.IconSbShield do
  use Moon.StatelessComponent

  property color, :string
  property background_color, :string

  def render(assigns) do
    class_name =
      get_class_name("Icons-IconSbShield-#{assigns[:color]}-#{assigns[:background_color]}")

    ~H"""
    <style>
      .{{ class_name }} {
        vertical-align: 'middle';
        color: {{ @color }};
        background-color: {{ @background_color }};
      }
    </style>

    <svg class={{ class_name }} width="18" height="20" viewBox="0 0 18 20" fill="none" xmlns="http://www.w3.org/2000/svg">  <g clip-path="url(#clip0)">   <path fill-rule="evenodd" clip-rule="evenodd" d="M16.9983 2.49688C16.9916 2.36298 16.9006 2.24913 16.7736 2.21458L8.6475 0.0101813C8.59657 -0.00339375 8.54232 -0.00339375 8.49168 0.0101813L0.365261 2.21458C0.237948 2.24913 0.147011 2.36359 0.140342 2.49749C-0.0936692 7.34161 0.612607 11.1695 2.29979 14.2004C3.67021 16.6624 5.67689 18.5487 8.43471 19.967C8.47775 19.9892 8.52443 20 8.57143 20C8.61839 20 8.66568 19.9889 8.70871 19.9667C11.4759 18.5342 13.4841 16.6535 14.8482 14.2164C16.5405 11.1914 17.2441 7.35796 16.9983 2.49688Z" fill="currentColor"/>   <path fill-rule="evenodd" clip-rule="evenodd" d="M8.71136 5.19197C10.8484 5.19197 12.5802 6.92293 12.5802 9.06079C12.5802 11.1986 10.8484 12.9296 8.71136 12.9296C6.57436 12.9296 4.84254 11.1986 4.84254 9.06079C4.84254 6.9265 6.57436 5.19197 8.71136 5.19197ZM8.69718 5.92718C10.4469 5.92718 11.8633 7.3405 11.8633 9.08579C11.8633 10.831 10.4469 12.2444 8.69718 12.2444C6.94743 12.2444 5.53111 10.831 5.53111 9.08579C5.53111 7.3405 6.94743 5.92718 8.69718 5.92718Z" fill="white"/>   <path fill-rule="evenodd" clip-rule="evenodd" d="M7.42189 4.45504C8.84429 4.45504 10.0011 5.61061 10.0011 7.03425C10.0011 8.45789 8.84789 9.61346 7.42189 9.61346C5.9995 9.61346 4.84264 8.45789 4.84264 7.03425C4.84264 5.607 5.99586 4.45504 7.42189 4.45504Z" fill="white"/>  </g>  <defs>   <clipPath id="clip0">    <rect width="17.1429" height="20" fill="white"/>   </clipPath>  </defs> </svg>
    """
  end
end