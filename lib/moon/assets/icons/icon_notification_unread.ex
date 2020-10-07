defmodule Moon.Assets.Icons.IconNotificationUnread do
  use Moon.StatelessComponent

  property color, :string
  property background_color, :string

  def render(assigns) do
    class_name =
      get_class_name(
        "Icons-IconNotificationUnread-#{assigns[:color]}-#{assigns[:background_color]}"
      )

    ~H"""
    <style>
      .{{ class_name }} {
        vertical-align: 'middle';
        color: {{ @color }};
        background-color: {{ @background_color }};
      }
    </style>

    <svg class={{ class_name }} width="18" height="20" viewBox="0 0 18 20" fill="none" xmlns="http://www.w3.org/2000/svg">  <circle cx="9.01053" cy="1.53947" r="1.03947" stroke="currentColor"/>  <path d="M11.3565 17.1908C11.3565 18.4661 10.3062 19.5 9.01059 19.5C7.71501 19.5 6.66473 18.4661 6.66473 17.1908" stroke="currentColor"/>  <path fill-rule="evenodd" clip-rule="evenodd" d="M9.01054 3.83553C6.44065 3.83553 4.32495 6.0058 4.32495 8.72368H3.32495C3.32495 5.48997 5.85259 2.83553 9.01054 2.83553C10.4268 2.83553 11.7162 3.36938 12.7078 4.24991C12.3632 4.37596 12.0402 4.54664 11.7457 4.75496C10.9738 4.17555 10.0278 3.83553 9.01054 3.83553ZM14.6351 12.2188C14.7966 12.4021 14.9859 12.5731 15.2078 12.7268L15.2187 12.7344L15.229 12.7407L15.2291 12.7408L15.2292 12.7408L15.2295 12.741L15.2297 12.7412L15.2303 12.7415L15.2399 12.7477C15.2493 12.7538 15.2644 12.7637 15.2845 12.7775C15.3246 12.8049 15.3841 12.8472 15.4566 12.9033C15.6023 13.016 15.7961 13.1814 15.9887 13.3909C16.3823 13.819 16.7211 14.3761 16.7211 15.0099C16.7211 15.5707 16.5983 15.8659 16.444 16.0262C16.2938 16.1822 16.0211 16.3059 15.4925 16.3059H10.7391V17.3059H15.4925C16.1572 17.3059 16.7488 17.1516 17.1645 16.7196C17.5762 16.2918 17.7211 15.6889 17.7211 15.0099C17.7211 14.0159 17.1956 13.2261 16.7249 12.7141C16.4853 12.4535 16.247 12.2505 16.0686 12.1124C15.979 12.0431 15.9035 11.9894 15.8491 11.9521C15.8219 11.9335 15.7999 11.919 15.7839 11.9086L15.7786 11.9052C15.421 12.0618 15.037 12.1692 14.6351 12.2188ZM4.32496 8.78533C4.32559 9.82195 4.32673 11.6784 2.81325 12.7268L2.80235 12.7344L2.7921 12.7407L2.79193 12.7408L2.79189 12.7408L2.79155 12.741L2.79132 12.7412L2.79074 12.7415L2.78112 12.7477C2.77175 12.7538 2.75664 12.7637 2.7366 12.7775C2.69647 12.8049 2.63693 12.8472 2.56446 12.9033C2.41877 13.016 2.22491 13.1814 2.03236 13.3909C1.63879 13.819 1.3 14.3761 1.3 15.0099C1.3 15.5707 1.42279 15.8659 1.57704 16.0262C1.72725 16.1822 1.99991 16.3059 2.52853 16.3059H7.28188V16.3059H10.7389V17.3059H7.28199V17.3059H2.52853C1.86385 17.3059 1.27225 17.1516 0.856516 16.7196C0.444819 16.2918 0.299999 15.6889 0.299999 15.0099C0.299999 14.0159 0.825479 13.2261 1.29617 12.7141C1.53575 12.4535 1.77403 12.2505 1.95244 12.1124C2.04202 12.0431 2.11752 11.9894 2.17192 11.9521C2.19914 11.9335 2.22117 11.919 2.23712 11.9086L2.25181 11.8992C3.29281 11.1715 3.32493 9.85293 3.32493 8.72369H4.32493L4.32496 8.78533Z" fill="currentColor"/>  <path d="M14.0794 10.2568C15.1905 10.2568 16.0912 9.33713 16.0912 8.2027C16.0912 7.06828 15.1905 6.14865 14.0794 6.14865C12.9683 6.14865 12.0676 7.06828 12.0676 8.2027C12.0676 9.33713 12.9683 10.2568 14.0794 10.2568Z" fill="currentColor"/> </svg>
    """
  end
end