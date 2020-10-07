defmodule Moon.Assets.Icons.IconBell do
  use Moon.StatelessComponent

  property color, :string
  property background_color, :string

  def render(assigns) do
    class_name = get_class_name("Icons-IconBell-#{assigns[:color]}-#{assigns[:background_color]}")

    ~H"""
    <style>
      .{{ class_name }} {
        vertical-align: middle;
        color: {{ @color }};
        background-color: {{ @background_color }};
      }
    </style>

    <svg class={{ class_name }} width="26" height="28" viewBox="0 0 26 28" fill="none" xmlns="http://www.w3.org/2000/svg">  <path fill-rule="evenodd" clip-rule="evenodd" d="M1.74927 17.974L1.55835 17.8638C0.755092 17.4 0.310492 16.6563 0.258388 15.8284C0.208955 15.0429 0.51536 14.2815 0.993022 13.6766C1.20879 13.4034 1.46679 13.2172 1.68505 13.0875L5.73437 10.6823L9.1621 5.91685C9.25448 5.81168 9.83695 5.02537 11.5264 3.95024C12.8225 3.12541 14.659 2.30855 16.8037 2.37603C17.9166 0.48653 20.3471 -0.156079 22.25 0.942572C24.1529 2.04123 24.8116 4.46734 23.7317 6.37589C24.8625 8.19951 25.0733 10.1985 25.0071 11.7333C24.9642 12.7266 24.7348 14.0293 24.4699 14.8118L21.5769 19.8226L21.9769 24.633C22.0052 24.9731 21.9892 25.4076 21.7996 25.8404C21.5001 26.524 20.9911 27.1358 20.2941 27.4597C19.5615 27.8 18.7203 27.7722 17.9416 27.3226L10.2282 22.8693C8.68397 24.6 6.08802 25.0715 4.0001 23.8661C1.91218 22.6606 1.02259 20.1767 1.74927 17.974ZM18.5179 3.40667C19.0702 2.45009 20.2934 2.12234 21.25 2.67462C22.2066 3.22691 22.5343 4.45009 21.982 5.40667L21.3575 6.48842L21.7503 7.01599C22.8339 8.47144 23.0712 10.2046 23.0089 11.6471C22.9748 12.4365 22.8587 13.2344 22.633 13.9934L19.532 19.3646L19.9838 24.7987C19.9964 24.9508 19.9762 25.0183 19.9677 25.0379C19.8163 25.3834 19.61 25.5722 19.4515 25.6458C19.3286 25.7029 19.1742 25.7249 18.9416 25.5906L11.3189 21.1896L11.3302 21.1699L2.66997 16.1699L2.65861 16.1896L2.55835 16.1317C2.32111 15.9947 2.26346 15.8462 2.25444 15.7028C2.24275 15.517 2.31633 15.228 2.56263 14.9161C2.57364 14.9022 2.61008 14.8643 2.70642 14.8071L7.1144 12.1888L10.724 7.17051C11.2723 6.57887 11.9217 6.06927 12.6001 5.63755C13.8182 4.86238 15.4378 4.20128 17.2401 4.41202L17.8934 4.48841L18.5179 3.40667ZM3.54554 19.0111L8.43192 21.8322C7.49311 22.6219 6.12395 22.7829 5.0001 22.134C3.87625 21.4852 3.33105 20.219 3.54554 19.0111Z" fill="currentColor"/> </svg>
    """
  end
end
