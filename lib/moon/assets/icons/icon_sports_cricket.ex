defmodule Moon.Assets.Icons.IconSportsCricket do
  use Moon.StatelessComponent

  property color, :string
  property background_color, :string

  false

  def render(assigns) do
    class_name =
      get_class_name("Icons-IconSportsCricket-#{assigns[:color]}-#{assigns[:background_color]}")

    false

    ~H"""
    <style>
      .{{ class_name }} {
        vertical-align: middle;

        
        color: {{ @color }};
        background-color: {{ @background_color }};
        display: inline-block;
        overflow: hidden;
        

        
      }
    </style>

    <svg class={{ class_name }} width="1em" height="1em" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">  <path fill-rule="evenodd" clip-rule="evenodd" d="M14.7165 5.83189C14.6557 5.63101 14.7703 5.41896 14.971 5.35707L15.4558 5.21097C15.6555 5.15111 15.8685 5.26373 15.9304 5.46563C15.9912 5.66652 15.8776 5.87856 15.6758 5.93944L15.1911 6.08655C15.1546 6.09771 15.1181 6.10278 15.0806 6.10278C14.9173 6.10278 14.7672 5.99625 14.7165 5.83189ZM14.318 5.10749C14.463 4.83863 14.7033 4.64281 14.9954 4.55556C15.1049 4.5231 15.2154 4.50585 15.326 4.50585C15.5115 4.50585 15.6961 4.5515 15.8634 4.64281C16.0338 4.73413 16.1606 4.87312 16.262 5.02937C16.1748 5.12575 16.1332 5.25967 16.1737 5.39157C16.2133 5.52346 16.3218 5.59955 16.4445 5.63304C16.4506 6.12916 16.1484 6.5918 15.6515 6.74095C15.3635 6.8282 15.0522 6.79878 14.7824 6.65471C14.6131 6.5634 14.4863 6.42339 14.3849 6.26714C14.4721 6.17076 14.5137 6.03683 14.4741 5.90291C14.4326 5.77 14.3241 5.68275 14.1993 5.65028C14.1983 5.4636 14.2277 5.27692 14.318 5.10749ZM13.6243 6.54006C13.6304 6.54006 13.6365 6.53803 13.6426 6.53702C13.817 6.86878 14.0857 7.14272 14.4234 7.32432C14.7033 7.47448 15.0106 7.55159 15.3209 7.55159C15.5045 7.55159 15.69 7.52521 15.8715 7.47042C16.7558 7.20359 17.3024 6.34526 17.2142 5.45853C17.3592 5.37128 17.4393 5.1988 17.3876 5.02835C17.3369 4.8579 17.1777 4.75746 17.0073 4.76456C16.8329 4.42976 16.5632 4.15481 16.2234 3.97218C15.7762 3.73275 15.2611 3.681 14.7774 3.82609C14.2896 3.9732 13.89 4.29989 13.6487 4.74833C13.4672 5.0872 13.3931 5.46462 13.4317 5.83899C13.2866 5.92726 13.2086 6.09974 13.2593 6.27019C13.31 6.43455 13.4611 6.54006 13.6243 6.54006ZM17.9383 16.5336L16.5348 17.9377C16.2427 18.232 15.7793 18.301 15.403 18.1498L15.8695 17.6831C16.0166 17.5339 16.0166 17.2925 15.8695 17.1433C15.7205 16.9952 15.4791 16.9952 15.33 17.1433L14.8068 17.6679L5.50963 8.3673C5.10603 7.96553 5.10603 7.30911 5.50963 6.90734L6.91313 5.50317C7.11392 5.30127 7.37859 5.20083 7.64124 5.20083C7.90592 5.20083 8.17059 5.30127 8.37138 5.50317L17.9383 15.0736C18.3408 15.4764 18.3408 16.1308 17.9383 16.5336ZM1.78997 2.4625L2.47042 1.78173C2.47042 1.78071 2.47651 1.78071 2.48563 1.78071C2.52315 1.78071 2.61037 1.78071 2.61037 1.78173L6.08361 5.2546L5.26118 6.07742L1.78997 2.60353C1.75144 2.56497 1.75144 2.50106 1.78997 2.4625ZM18.4767 14.5349L8.90986 4.96443C8.31865 4.37395 7.33803 4.3009 6.64845 4.74326L3.14986 1.244C2.82637 0.918327 2.25442 0.919342 1.93194 1.24299L1.25149 1.92275C1.08924 2.0861 1 2.3022 1 2.53352C1 2.76383 1.08924 2.97993 1.25149 3.14328L4.74704 6.6405C4.55335 6.9327 4.44789 7.27664 4.44789 7.63681C4.44789 8.11772 4.63448 8.56819 4.97115 8.90604L14.536 18.4745C14.537 18.4755 14.537 18.4765 14.537 18.4765C14.538 18.4775 14.539 18.4765 14.539 18.4775C14.8767 18.8143 15.326 19 15.8046 19C16.2853 19 16.7355 18.8133 17.0732 18.4765L18.4767 17.0723C18.8134 16.7345 19 16.284 19 15.8031C19 15.3232 18.8134 14.8727 18.4767 14.5349Z" fill="currentColor"/> </svg>
    """
  end
end
