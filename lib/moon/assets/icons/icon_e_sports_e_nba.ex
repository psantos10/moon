defmodule Moon.Assets.Icons.IconESportsENba do
  use Moon.StatelessComponent

  property color, :string
  property background_color, :string

  def render(assigns) do
    class_name =
      get_class_name("Icons-IconESportsENba-#{assigns[:color]}-#{assigns[:background_color]}")

    ~H"""
    <style>
      .{{ class_name }} {
        vertical-align: middle;
        color: {{ @color }};
        background-color: {{ @background_color }};
      }
    </style>

    <svg class={{ class_name }} width="28" height="28" viewBox="0 0 28 28" fill="none" xmlns="http://www.w3.org/2000/svg"> <path d="M17.1781 0H10.8084C10.0629 0.00192833 9.34868 0.308221 8.82222 0.851709C8.29576 1.3952 8.00007 2.13152 8 2.8992V25.1008C8.00046 25.8696 8.2972 26.6067 8.82504 27.1503C9.35289 27.6939 10.0687 27.9995 10.8151 28H17.1781C17.9253 27.9998 18.6419 27.6945 19.1709 27.151C19.6998 26.6076 19.998 25.8703 20 25.1008V2.8992C19.9969 2.13007 19.6983 1.39347 19.1696 0.850264C18.6409 0.307058 17.9249 0.00138426 17.1781 0" fill="white"/> <path d="M17.7131 24.4211C17.3474 24.1141 17.5912 23.9777 17.5769 23.8549C17.3331 22.9066 16.5442 22.3335 16.953 22.0197C16.8656 21.7806 16.765 21.546 16.6518 21.317C15.4183 20.6416 14.3713 19.55 14.192 19.3931C13.9769 19.1679 13.6112 18.9428 13.5394 18.7654C13.2454 18.5062 11.7896 16.5482 11.4526 15.825L10.8645 15.7431C10.5992 14.6993 9.70279 13.826 9.68128 12.7822C9.70807 12.3034 9.79473 11.8293 9.93944 11.37C10.0518 11.1996 10.1922 11.0476 10.3554 10.9197V10.64C9.07171 10.6741 9.43744 10.5513 9.21513 10.0737C9.05736 9.74627 9.17211 9.67122 9.22948 9.44609C9.40159 8.77067 9.97529 7.73368 10.2119 7.25611C10.2837 7.01733 10.5347 6.44425 10.5347 6.44425C11.4956 4.58857 11.8542 4.72502 12.9872 4.62269L13.0446 4.54764C14.1849 4.49989 13.9984 4.41802 14.1562 3.3742C13.9912 3.44242 13.941 3.04673 13.941 3.04673C13.8478 2.45318 14.1131 2.56234 14.2422 2.55552C14.2709 1.57992 14.3713 1.27292 15.1171 1.00002H11.2733C10.975 0.998766 10.6794 1.05362 10.4035 1.16143C10.1275 1.26925 9.87671 1.42789 9.66544 1.62824C9.45418 1.82859 9.28663 2.06669 9.17242 2.32886C9.05822 2.59103 8.99963 2.87208 9 3.15587V24.8373C9.00018 25.4108 9.23975 25.9608 9.66604 26.3664C10.0923 26.7719 10.6704 26.9998 11.2733 27H18C17.2327 26.6043 17.6916 25.8538 17.7131 24.4211Z" fill="#1D428A"/> <path d="M15.6778 5.1252L15.6838 5.21586C15.859 5.32596 15.9436 5.41014 16.1187 5.53319C16.5838 5.84403 17.1516 6.40097 17.0791 8.31138C17.206 8.72585 17.2664 9.54829 17.3872 9.80734C17.6288 10.3189 17.7859 10.6492 17.8584 11.1349C17.8584 11.1349 17.9308 11.8861 18.0154 11.9444C18.4926 12.061 18.3537 12.1128 18.4262 12.197C18.4986 12.3006 18.7765 12.2941 18.7765 12.5726C18.8693 12.7031 18.9445 12.847 19 13V3.05289C18.9998 2.50848 18.7981 1.98641 18.439 1.60146C18.0799 1.2165 17.593 1.00016 17.0852 1H15.2489C15.3657 1.03028 15.4754 1.0862 15.5711 1.16423C15.6667 1.24225 15.7462 1.34069 15.8046 1.45332C16.0402 1.47275 16.3241 2.04263 15.8831 2.88451C16.0764 3.02051 15.9254 3.22774 15.7865 3.46735C15.7442 3.54506 15.7019 3.68106 15.569 3.67458C15.3999 4.05019 15.2006 4.41284 15.0496 4.43875C15.0196 4.48122 15.0024 4.53247 15.0002 4.58568C14.9981 4.63889 15.0111 4.69154 15.0375 4.73664C15.2686 4.82929 15.4847 4.96042 15.6778 5.1252" fill="#C8102E"/> <path d="M19 14.9282C18.8792 15.2396 18.6826 15.5138 18.4291 15.7244C18.1756 15.935 17.8737 16.075 17.5525 16.1309C17.2313 16.1869 16.9014 16.1568 16.5947 16.0438C16.288 15.9307 16.0147 15.7383 15.8011 15.4852C15.5875 15.232 15.4407 14.9266 15.3749 14.5983C15.309 14.2699 15.3264 13.9297 15.4252 13.6102C15.524 13.2907 15.7011 13.0028 15.9392 12.774C16.1774 12.5453 16.4688 12.3834 16.7853 12.3039C16.5638 11.7376 16.1075 10.826 15.9665 10.5291C15.839 10.2321 15.5236 8.37438 15.4565 8.00836C15.4431 7.92549 14.6377 8.48488 14.6377 8.51941C14.5907 8.56775 14.0337 10.0595 14.0136 10.1423C14.0036 10.2248 13.9991 10.3079 14.0001 10.391C14.0001 10.391 14.2753 10.4255 14.4297 10.9158C14.584 11.4061 15.0605 13.1948 15.0605 13.1948C15.0191 13.242 14.9742 13.2859 14.9263 13.326C15.5236 15.3909 15.3155 16.2818 15.584 16.8826C15.9195 17.739 16.0135 17.6216 16.3021 18.3398C16.5101 18.8647 16.745 20.9158 16.8188 21.0125C17.141 21.4337 17.3155 21.7652 17.3155 22C17.3155 22.2417 17.0403 22.9461 17.141 23.3605C17.2014 23.6022 17.2349 24.1478 17.3423 24.2514C17.3423 24.2514 17.443 24.4586 17.396 24.5484C17.3826 24.5829 17.3557 24.6243 17.3692 24.6658C17.5504 25.3149 18.1208 26.4199 17.188 27H17.2081C17.7086 26.9196 18.1645 26.6574 18.4932 26.2608C18.822 25.8643 19.0017 25.3596 19 24.8384L19 14.9282Z" fill="#C8102E"/> </svg>
    """
  end
end
