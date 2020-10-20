defmodule Moon.Assets.Duotones.NoFreeBet do
  use Moon.StatelessComponent
  use Moon.Components.Context

  prop(color, :string)
  prop(height, :string)
  prop(width, :string)
  prop(font_size, :string)
  prop(vertical_align, :string)

  def render(assigns) do
    class_name =
      get_class_name(
        "Duotones-NoFreeBet-#{assigns.color}-#{assigns.height}-#{assigns.width}-#{
          assigns.font_size
        }-#{assigns.vertical_align}"
      )

    ~H"""
    <Context get={{ theme: theme }}>
    <style>
      .{{ class_name }} {
        vertical-align: middle;
        width: 1em;
        
        color: {{ get_color(@color, theme) }};
        height: {{ @height }};
        width: {{ @width }};
        font-size: {{ @font_size }};
        vertical-align: {{ @vertical_align }};
        overflow: hidden;
      }
    </style>

    <svg class={{ class_name }} width="1em" height="1em"  viewBox="0 0 174 174" fill="none" xmlns="http://www.w3.org/2000/svg"> <path opacity="0.1" d="M113.274 102.486H43.7899C40.3679 102.486 37.5549 99.673 37.5549 96.251V44.109C37.5549 40.687 40.3679 37.874 43.7899 37.874H113.274C116.696 37.874 119.509 40.687 119.509 44.109V96.28C119.509 99.673 116.696 102.486 113.274 102.486Z" fill="currentColor"/> <path opacity="0.1" d="M137.257 111.94H133.545C132.878 111.94 132.327 111.389 132.327 110.722V74.965C132.327 74.298 132.878 73.747 133.545 73.747H137.257C137.924 73.747 138.475 74.298 138.475 74.965V110.751C138.475 111.389 137.924 111.94 137.257 111.94Z" fill="currentColor"/> <path d="M121.539 121.909H108.293V120.589H121.539C125.614 120.589 128.941 117.262 128.941 113.187V58.29C128.941 54.2148 125.614 50.888 121.539 50.888H57.3908C53.3156 50.888 49.9888 54.2148 49.9888 58.29V113.187C49.9888 117.262 53.3156 120.589 57.3908 120.589H70.4628V121.909H57.3908C52.5919 121.909 48.6978 118.015 48.6978 113.216V58.29C48.6978 53.4911 52.5919 49.597 57.3908 49.597H121.568C126.367 49.597 130.261 53.4911 130.261 58.29V113.187C130.261 117.986 126.338 121.909 121.539 121.909Z" fill="white" stroke="white"/> <path d="M107.996 122.409C107.358 122.409 106.836 121.887 106.836 121.249V110.055H72.0939V121.249C72.0939 121.887 71.5719 122.409 70.9339 122.409C70.2959 122.409 69.7739 121.887 69.7739 121.249V107.735H109.127V121.249C109.156 121.887 108.634 122.409 107.996 122.409Z" fill="currentColor"/> <path d="M101.79 125.483C99.7599 125.483 98.7159 124.439 97.8749 123.598C97.1499 122.873 96.6569 122.38 95.6129 122.38C94.5399 122.38 94.0759 122.873 93.3509 123.598C92.5099 124.439 91.4659 125.483 89.4359 125.483C87.4059 125.483 86.3619 124.439 85.5209 123.598C84.7959 122.873 84.3319 122.38 83.2589 122.38C82.1859 122.38 81.7219 122.873 80.9969 123.598C80.1559 124.439 79.1119 125.483 77.0819 125.483C75.0519 125.483 74.0079 124.439 73.1669 123.598C72.4419 122.873 71.9489 122.38 70.9049 122.38C70.2669 122.38 69.7449 121.858 69.7449 121.22C69.7449 120.582 70.2669 120.06 70.9049 120.06C72.9349 120.06 73.9789 121.104 74.8199 121.945C75.5449 122.67 76.0089 123.163 77.0819 123.163C78.1549 123.163 78.6189 122.67 79.3439 121.945C80.1849 121.104 81.2289 120.06 83.2589 120.06C85.2889 120.06 86.3329 121.104 87.1739 121.945C87.8989 122.67 88.3629 123.163 89.4359 123.163C90.5089 123.163 90.9729 122.67 91.6979 121.945C92.5389 121.104 93.5829 120.06 95.6129 120.06C97.6429 120.06 98.6869 121.104 99.5279 121.945C100.253 122.67 100.746 123.163 101.79 123.163C102.863 123.163 103.327 122.67 104.052 121.945C104.893 121.104 105.937 120.06 107.967 120.06C108.605 120.06 109.127 120.582 109.127 121.22C109.127 121.858 108.605 122.38 107.967 122.38C106.894 122.38 106.43 122.873 105.705 123.598C104.864 124.439 103.82 125.483 101.79 125.483Z" fill="currentColor"/> <path d="M114.927 115.732H109.685V114.412H114.927C116.276 114.412 117.37 113.318 117.37 111.969C117.37 110.62 116.276 109.526 114.927 109.526H64.0028C62.6537 109.526 61.5598 110.62 61.5598 111.969C61.5598 113.318 62.6537 114.412 64.0028 114.412H69.2448V115.732H64.0028C61.9322 115.732 60.2688 114.044 60.2688 111.998C60.2688 109.927 61.9567 108.264 64.0028 108.264H114.927C116.997 108.264 118.661 109.952 118.661 111.998L118.661 112.004C118.686 114.04 117.003 115.732 114.927 115.732Z" fill="white" stroke="white"/> <path d="M77.8938 116.174H75.5738C74.9358 116.174 74.4138 115.652 74.4138 115.014C74.4138 114.376 74.9358 113.854 75.5738 113.854H77.8938C78.5318 113.854 79.0538 114.376 79.0538 115.014C79.0538 115.652 78.5318 116.174 77.8938 116.174Z" fill="currentColor"/> <path d="M96.396 116.261L91.756 116.232C91.118 116.232 90.596 115.71 90.596 115.072C90.596 114.434 91.118 113.912 91.756 113.912L96.396 113.941C97.034 113.941 97.556 114.463 97.556 115.101C97.556 115.739 97.034 116.261 96.396 116.261ZM87.145 116.232L82.505 116.203C81.867 116.203 81.345 115.681 81.345 115.043C81.345 114.405 81.867 113.883 82.505 113.883L87.145 113.912C87.783 113.912 88.305 114.434 88.305 115.072C88.305 115.71 87.783 116.232 87.145 116.232Z" fill="currentColor"/> <path d="M103.356 116.29H101.036C100.398 116.29 99.8757 115.768 99.8757 115.13C99.8757 114.492 100.34 113.999 101.036 113.97H103.356C103.994 113.97 104.516 114.492 104.516 115.13C104.516 115.797 103.994 116.29 103.356 116.29Z" fill="currentColor"/> <path d="M101.442 149.959C101.094 149.959 100.746 149.93 100.398 149.843L72.0358 143.985C70.6728 143.695 69.5128 142.912 68.7298 141.752C67.9758 140.592 67.7148 139.2 67.9758 137.837L69.6578 129.717C69.7738 129.079 70.4118 128.702 71.0208 128.818C71.6588 128.934 72.0358 129.572 71.9198 130.181L70.2378 138.301C70.0928 139.055 70.2378 139.838 70.6438 140.476C71.0788 141.114 71.7168 141.549 72.4708 141.723L100.833 147.581C102.399 147.9 103.936 146.885 104.255 145.348L105.937 137.228C106.053 136.59 106.691 136.213 107.3 136.329C107.938 136.445 108.315 137.083 108.199 137.692L106.517 145.812C106.024 148.277 103.849 149.959 101.442 149.959Z" fill="currentColor"/> <path d="M108.663 135.662C108.634 135.662 108.634 135.662 108.663 135.662C106.517 135.227 105.212 136.097 104.139 136.822C103.153 137.489 102.573 137.837 101.558 137.605C100.514 137.402 100.137 136.851 99.4987 135.836C98.8027 134.763 97.9617 133.4 95.8157 132.965C93.7277 132.559 92.3647 133.4 91.2917 134.125C90.3057 134.792 89.7257 135.14 88.7107 134.908C87.6667 134.705 87.2897 134.154 86.6517 133.139C85.9557 132.066 85.1147 130.703 82.9687 130.268C80.8517 129.833 79.5177 130.732 78.4737 131.428C77.4877 132.095 76.9367 132.356 75.8927 132.211C74.8487 132.008 74.4717 131.457 73.8337 130.442C73.1377 129.369 72.2967 128.006 70.1507 127.571L69.6287 130.036C70.6727 130.239 71.0497 130.79 71.6877 131.805C72.3837 132.878 73.2247 134.241 75.3707 134.676C77.4877 135.111 78.8217 134.212 79.8657 133.516C80.8517 132.849 81.4317 132.501 82.4467 132.733C83.4907 132.936 83.8677 133.487 84.5057 134.502C85.2017 135.575 86.0427 136.938 88.1887 137.373C90.3057 137.808 91.6397 136.909 92.6837 136.213C93.6697 135.546 94.2497 135.198 95.2647 135.43C96.3087 135.633 96.6857 136.184 97.3237 137.199C98.0197 138.272 98.8607 139.635 101.007 140.07C103.124 140.505 104.458 139.606 105.502 138.91C106.488 138.243 107.068 137.895 108.083 138.127L108.663 135.662Z" fill="currentColor"/> <path d="M137.315 101.725C136.953 101.725 136.655 101.427 136.655 101.065V71.9781C136.655 71.6162 136.953 71.3181 137.315 71.3181C137.677 71.3181 137.975 71.6162 137.975 71.9781V101.065C137.975 101.427 137.677 101.725 137.315 101.725Z" fill="white" stroke="white"/> <path d="M118.719 92.655L118.719 92.6604C118.745 95.0741 116.771 97.027 114.376 97.027H64.873C62.4521 97.027 60.501 95.0759 60.501 92.655V65.598C60.501 63.1772 62.4521 61.226 64.873 61.226H114.347C116.768 61.226 118.719 63.1772 118.719 65.598L118.719 92.655ZM64.873 62.517C63.1721 62.517 61.821 63.9046 61.821 65.569V92.626C61.821 94.3268 63.2085 95.678 64.873 95.678H114.347C116.048 95.678 117.399 94.2904 117.399 92.626V65.569C117.399 63.8682 116.011 62.517 114.347 62.517H64.873Z" fill="white" stroke="white"/> <path d="M79.3439 85.434C79.0539 85.434 78.7639 85.318 78.5319 85.086L68.2369 74.791C67.7729 74.327 67.7729 73.602 68.2369 73.167C68.7009 72.703 69.4259 72.703 69.8609 73.167L80.1559 83.462C80.6199 83.926 80.6199 84.651 80.1559 85.086C79.9239 85.318 79.6339 85.434 79.3439 85.434Z" fill="currentColor"/> <path d="M69.0489 85.434C68.7589 85.434 68.4689 85.318 68.2369 85.086C67.7729 84.622 67.7729 83.897 68.2369 83.462L78.5319 73.167C78.9959 72.703 79.7209 72.703 80.1559 73.167C80.6199 73.631 80.6199 74.356 80.1559 74.791L69.8609 85.086C69.6289 85.318 69.3389 85.434 69.0489 85.434Z" fill="currentColor"/> <path d="M94.7719 85.434C94.4819 85.434 94.1919 85.318 93.9599 85.086L83.6649 74.791C83.2009 74.327 83.2009 73.602 83.6649 73.167C84.1289 72.703 84.8539 72.703 85.2889 73.167L95.5839 83.462C96.0479 83.926 96.0479 84.651 95.5839 85.086C95.3519 85.318 95.0619 85.434 94.7719 85.434Z" fill="currentColor"/> <path d="M84.4769 85.434C84.1869 85.434 83.8969 85.318 83.6649 85.086C83.2009 84.622 83.2009 83.897 83.6649 83.462L93.9599 73.167C94.4239 72.703 95.1489 72.703 95.5839 73.167C96.0479 73.631 96.0479 74.356 95.5839 74.791L85.2889 85.086C85.0859 85.318 84.7669 85.434 84.4769 85.434Z" fill="currentColor"/> <path d="M110.2 85.434C109.91 85.434 109.62 85.318 109.388 85.086L99.0929 74.791C98.6289 74.327 98.6289 73.602 99.0929 73.167C99.5569 72.703 100.282 72.703 100.717 73.167L111.012 83.462C111.476 83.926 111.476 84.651 111.012 85.086C110.809 85.318 110.49 85.434 110.2 85.434Z" fill="currentColor"/> <path d="M99.9049 85.434C99.6149 85.434 99.3249 85.318 99.0929 85.086C98.6289 84.622 98.6289 83.897 99.0929 83.462L109.388 73.167C109.852 72.703 110.577 72.703 111.012 73.167C111.476 73.631 111.476 74.356 111.012 74.791L100.717 85.086C100.514 85.318 100.224 85.434 99.9049 85.434Z" fill="currentColor"/> </svg>
    </Context>
    """
  end
end
