defmodule Moon.Assets.Duotones.HustleToTop do
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
        "Duotones-HustleToTop-#{assigns.color}-#{assigns.height}-#{assigns.width}-#{
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

    <svg class={{ class_name }} width="1em" height="1em"  viewBox="0 0 174 174" fill="none" xmlns="http://www.w3.org/2000/svg"> <path opacity="0.1" d="M130.101 100.953L128.422 99.0164C127.39 97.8545 125.582 97.8545 124.549 99.1456C123.516 100.437 121.709 100.308 120.676 99.1456L112.671 89.4625C111.768 88.4296 110.347 88.1714 109.315 88.946L104.538 92.1737C103.505 92.9484 102.084 92.6902 101.181 91.6573L95.2417 84.6855C94.0798 83.2653 92.014 83.5235 91.1103 85.0728L73.0352 114.38C72.2605 115.671 70.5821 116.059 69.4201 115.155L65.0305 112.185C63.8685 111.411 62.3192 111.669 61.4154 112.96L49.6666 130.648C49.2793 131.293 49.7957 132.068 50.4413 131.939L86.5915 125.354C89.9483 124.709 93.0469 122.772 94.9835 119.803L98.9859 113.993C100.019 112.573 101.697 111.669 103.376 111.927L109.315 113.993C111.251 114.251 114.209 115.155 117.836 112.831L130.101 104.439C131.134 103.406 131.005 101.857 130.101 100.953Z" fill="currentColor"/> <path opacity="0.1" d="M100.829 71.3756L102.378 72.1502C105.347 73.5704 108.833 73.5704 111.803 72.0211C114.901 70.3427 118.645 70.4718 121.744 72.1502L123.552 73.1831C124.713 73.8287 126.134 73.054 126.134 71.6338V56.7864C126.134 56.1409 125.746 55.6244 125.23 55.2371L121.744 53.3005C118.645 51.6221 114.901 51.493 111.803 53.1714C108.833 54.7207 105.347 54.7207 102.378 53.3005C101.216 52.7841 99.7957 53.5587 99.7957 54.8498V69.6972C99.7957 70.4718 100.183 70.9883 100.829 71.3756Z" fill="currentColor"/> <path d="M93.3755 53.2318L96.7323 54.9102C99.1853 56.0722 102.155 56.0722 104.608 54.7811L106.286 53.8773C108.868 52.5863 111.967 52.5863 114.549 54.0064L119.714 56.9759" stroke="currentColor" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/> <path d="M93.3755 48.2318L96.7323 49.9102C99.1853 51.0722 102.155 51.0722 104.608 49.7811L106.286 48.8773C108.868 47.5863 111.967 47.5863 114.549 49.0064L119.843 51.9759" stroke="currentColor" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/> <path d="M93.3755 58.2861L96.7323 59.9645C99.1853 61.1265 102.155 61.1265 104.608 59.8354L106.286 58.9316C108.868 57.6405 111.967 57.6405 114.549 59.0607L119.843 62.0302V47.0513L114.549 44.0819C112.096 42.6617 108.868 42.6617 106.286 43.9527L104.608 44.8565C102.155 46.1476 99.1853 46.1476 96.7323 44.9856L93.3755 43.3072V58.2861Z" stroke="currentColor" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/> <path d="M93.3755 81.3941V43.4363" stroke="currentColor" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/> <path d="M43 124.275L56.169 105.941C57.0728 104.779 58.6221 104.521 59.784 105.296L64.1737 108.136C65.4648 108.911 67.0141 108.523 67.9178 107.362L86.3803 79.4742C87.4131 78.054 89.4789 77.7958 90.6408 79.0869L96.7089 85.6714C97.6127 86.5751 99.0329 86.8334 100.195 86.1878L105.101 83.0892C106.263 82.4437 107.683 82.5728 108.587 83.6057L116.85 92.7723C117.883 93.9343 119.819 93.9343 120.852 92.7723C121.885 91.6103 123.692 91.6103 124.725 92.7723L128.082 96.2582" stroke="white" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/> <path d="M67.2725 123.747L75.9227 116.646C77.0847 115.742 78.7631 115.613 80.0542 116.387L82.3781 117.808C83.9274 118.711 85.9931 118.324 87.026 116.904L93.7396 108.124C95.1598 106.317 97.8711 106.317 99.2912 107.995L106.78 116.775C107.167 117.291 107.812 117.678 108.458 117.937L112.977 119.228C113.88 119.486 114.913 119.357 115.817 118.84L123.305 114.58" stroke="white" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/> <path d="M52.6835 73.3688C54.2767 75.2071 56.7276 76.31 59.3012 76.31C62.2423 76.31 64.8159 74.962 66.409 72.7561C67.1443 73.1237 67.8796 73.2463 68.7374 73.2463C69.9629 73.2463 71.0659 72.8786 71.9237 72.2659C72.659 73.0012 73.6394 73.6139 74.8649 73.6139C77.0708 73.6139 78.7865 71.8982 78.7865 69.6924C78.7865 67.4865 77.0708 65.7708 74.8649 65.7708C74.4972 65.7708 74.2521 65.7708 74.007 65.8933C73.2718 63.81 71.1884 62.2169 68.7374 62.2169C68.0021 62.2169 67.3894 62.3394 66.7767 62.5845C65.1835 60.011 62.3649 58.4178 59.1786 58.4178C54.7669 58.4178 50.9678 61.7267 50.3551 65.8933C49.9874 65.7708 49.7423 65.7708 49.3747 65.7708C47.1688 65.7708 45.4531 67.4865 45.4531 69.6924C45.4531 71.2855 46.311 72.6335 47.659 73.2463" stroke="white" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/> </svg>
    </Context>
    """
  end
end
