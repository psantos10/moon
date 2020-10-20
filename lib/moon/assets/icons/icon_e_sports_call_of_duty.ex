defmodule Moon.Assets.Icons.IconESportsCallOfDuty do
  use Moon.StatelessComponent
  use Moon.Components.Context

  prop(color, :string)
  prop(background_color, :string)
  prop(font_size, :string)

  def render(assigns) do
    class_name =
      get_class_name(
        "Icons-IconESportsCallOfDuty-#{assigns.color}-#{assigns.background_color}-#{
          assigns.font_size
        }"
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

    <svg class={{ class_name }} width="1em" height="1em"  viewBox="0 0 28 28" fill="none" xmlns="http://www.w3.org/2000/svg"> <path d="M13.8556 3.20024C14.7631 3.21053 15.6673 3.311 16.555 3.50018C17.4698 3.71913 19.6053 4.39998 20.2682 6.1276C20.784 7.74125 20.784 9.47787 20.7661 11.3105H16.408C16.408 11.0285 16.408 10.7466 16.408 10.4706C16.4454 9.25013 16.4143 8.02849 16.315 6.81145C16.3124 6.28391 16.1061 5.77778 15.7392 5.39876C15.5127 5.17331 15.2435 4.99535 14.9473 4.87534C14.6512 4.75534 14.3341 4.69569 14.0145 4.69991C13.692 4.69501 13.3718 4.75397 13.0722 4.87339C12.7726 4.99282 12.4996 5.17035 12.2689 5.39576C11.8911 5.77811 11.6761 6.29196 11.669 6.82944C11.5161 8.74902 11.5341 10.6806 11.5551 12.5462C11.5551 13.59 11.5761 14.6697 11.5551 15.7195V15.7765C11.5731 16.3764 11.5551 16.9762 11.5551 17.6151C11.4979 18.9455 11.5581 20.2784 11.735 21.5982V21.6492V21.6972C11.975 22.669 12.8448 23.2958 13.9455 23.2958C14.3421 23.2972 14.7348 23.2187 15.1003 23.0649L15.2203 23.0139L15.3252 22.9389C16.1981 22.3181 16.282 21.3493 16.33 20.7704V20.6414V20.5904C16.378 19.6726 16.372 18.7548 16.366 17.87V17.5161H20.7151V17.5461C20.7151 19.2077 20.6911 20.7794 20.0972 22.1411C19.0894 23.7997 16.8699 24.7955 14.1885 24.7955H13.8886H13.8646C11.954 24.7775 9.41654 24.3936 8.13882 22.669C7.36799 21.4452 7.308 19.8796 7.23902 18.2209C7.23902 18.026 7.23902 17.831 7.21502 17.6391C7.21502 16.6703 7.21502 15.6865 7.21502 14.7387C7.19703 12.3722 7.17903 9.93976 7.34399 7.54029V7.51929C7.41298 6.1126 8.42076 4.71791 9.86044 4.04306C11.1117 3.46482 12.4774 3.17671 13.8556 3.20024ZM13.8556 2.0005C12.2925 1.97459 10.7439 2.30379 9.32656 2.96329C7.58094 3.78211 6.23124 5.50674 6.13226 7.46231C5.89531 10.8576 6.02728 14.2648 6.01229 17.6601C6.09627 19.5767 6.06028 21.6672 7.13704 23.3408C8.63671 25.4164 11.4171 25.9713 13.8406 25.9922H14.1885C16.8489 25.9922 19.7733 25.0445 21.207 22.693C22.1068 20.7044 21.9178 18.4369 21.9838 16.3074H15.2173C15.1963 17.7111 15.2533 19.1148 15.1813 20.5064C15.1333 21.0133 15.1243 21.6132 14.6624 21.9401C14.4504 22.0345 14.2224 22.0875 13.9905 22.0961C13.5226 22.0961 13.0667 21.9041 12.9468 21.4093C12.6468 19.5377 12.8358 17.6271 12.7818 15.7435C12.8388 12.7861 12.6528 9.82279 12.8958 6.87744C12.8958 6.22658 13.4537 5.89965 14.0265 5.89965C14.5994 5.89965 15.1543 6.22058 15.1363 6.86544C15.3312 8.74003 15.1813 10.6296 15.2263 12.5072H21.9868C21.9868 10.2457 22.1368 7.91221 21.4259 5.72269C20.7181 3.8271 18.7265 2.76834 16.8429 2.32143C15.8637 2.12214 14.8669 2.02165 13.8676 2.0215L13.8556 2.0005Z" fill="#FD9041"/> <path d="M12.7696 14C12.8237 15.8413 12.6314 19.6645 12.9348 21.494C13.1181 22.2241 14.0676 22.2827 14.6655 22.0335C15.1283 21.7139 15.1373 21.1275 15.1854 20.632C15.2575 19.2628 15.1854 17.8907 15.2214 16.5273C17.4809 16.5273 19.7285 16.5273 22 16.5273C21.9339 18.609 22.1232 20.8255 21.2218 22.7694C19.7194 25.1765 16.5976 26.0796 13.8423 25.9946C11.4145 25.974 8.63512 25.4316 7.12676 23.4027C6.04808 21.7667 6.08413 19.7231 6 17.8496V14H12.7696Z" fill="#FD9041"/> </svg>
    </Context>
    """
  end
end
