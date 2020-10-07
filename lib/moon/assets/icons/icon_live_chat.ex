defmodule Moon.Assets.Icons.IconLiveChat do
  use Moon.StatelessComponent

  property color, :string
  property background_color, :string

  def render(assigns) do
    class_name =
      get_class_name("Icons-IconLiveChat-#{assigns[:color]}-#{assigns[:background_color]}")

    ~H"""
    <style>
      .{{ class_name }} {
        vertical-align: middle;
        color: {{ @color }};
        background-color: {{ @background_color }};
      }
    </style>

    <svg class={{ class_name }} width="23" height="23" viewBox="0 0 23 23" fill="none" xmlns="http://www.w3.org/2000/svg"> <path d="M20.9379 10.1857C20.8586 11.8286 20.5414 13.3893 20.0655 14.5393C19.1138 16.8393 16.8138 17.4143 14.6724 17.5786C13.4034 17.6607 12.2931 17.7429 11.2621 17.7429C10.6276 17.7429 10.0724 17.7429 9.43793 17.6607C9.27931 17.6607 9.12069 17.7429 8.96207 17.825L5.78966 20.0429L5.55172 17.5786C5.55172 17.3321 5.3931 17.0857 5.07586 17.0036C3.8069 16.5107 2.93448 15.6893 2.45862 14.5393C1.98276 13.3893 1.66552 11.8286 1.58621 10.1857V9.2C1.58621 7.475 1.90345 5.91429 2.37931 4.76429C3.33103 2.46429 5.63103 1.97143 7.77241 1.725C9.04138 1.64286 10.1517 1.56071 11.1828 1.56071C12.2138 1.56071 13.4034 1.64286 14.5931 1.725C16.7345 1.97143 19.0345 2.46429 19.9862 4.76429C20.4621 5.91429 20.7793 7.475 20.8586 9.11786C20.9379 9.52857 20.9379 9.85714 20.9379 10.1857ZM21.4931 4.18929C21.1759 3.45 20.7793 2.79286 20.3034 2.3C19.8276 1.80714 19.2724 1.39643 18.6379 1.15C17.369 0.575 16.0207 0.328571 14.9103 0.246429C13.5621 0.0821429 12.3724 0 11.2621 0C10.0724 0 8.96207 0.0821429 7.61379 0.164286C6.50345 0.328571 5.15517 0.492857 3.88621 1.06786C3.25172 1.39643 2.69655 1.80714 2.22069 2.3C1.66552 2.79286 1.26897 3.45 0.951724 4.18929C0.396552 5.50357 0.0793104 7.22857 0 9.11786V10.2679C0.0793104 12.1571 0.475862 13.8821 0.951724 15.1964C1.26897 16.0179 1.74483 16.7571 2.37931 17.3321C2.77586 17.7429 3.25172 18.0714 3.8069 18.3179C3.88621 18.3179 3.96552 18.4 3.96552 18.4821L4.36207 22.0964C4.36207 22.3429 4.6 22.5071 4.75862 22.5071C4.83793 22.5071 4.91724 22.5071 4.99655 22.425L9.27931 19.3857C9.35862 19.3036 9.51724 19.3036 9.59655 19.3036H11.1034C12.2931 19.3036 13.4034 19.2214 14.7517 19.1393C15.8621 19.0571 17.2103 18.8107 18.4793 18.2357C19.1138 17.9071 19.669 17.4964 20.1448 17.0857C20.7 16.5929 21.0966 15.9357 21.4138 15.1964C21.969 13.8821 22.2862 12.1571 22.3655 10.2679V9.11786C22.2862 7.22857 21.969 5.50357 21.4931 4.18929Z" fill="currentColor"/> <path d="M6.10681 9.52855C6.10681 9.81176 6.21544 10.0834 6.40879 10.2836C6.60215 10.4839 6.8644 10.5964 7.13785 10.5964C7.41129 10.5964 7.67354 10.4839 7.8669 10.2836C8.06025 10.0834 8.16888 9.81176 8.16888 9.52855C8.16888 9.24534 8.06025 8.97372 7.8669 8.77346C7.67354 8.5732 7.41129 8.46069 7.13785 8.46069C6.8644 8.46069 6.60215 8.5732 6.40879 8.77346C6.21544 8.97372 6.10681 9.24534 6.10681 9.52855ZM10.1516 9.52855C10.1516 9.66878 10.1783 9.80764 10.2301 9.9372C10.2819 10.0668 10.3579 10.1845 10.4536 10.2836C10.5494 10.3828 10.663 10.4615 10.7881 10.5151C10.9132 10.5688 11.0473 10.5964 11.1827 10.5964C11.3181 10.5964 11.4521 10.5688 11.5772 10.5151C11.7023 10.4615 11.816 10.3828 11.9117 10.2836C12.0075 10.1845 12.0834 10.0668 12.1352 9.9372C12.187 9.80764 12.2137 9.66878 12.2137 9.52855C12.2137 9.38832 12.187 9.24946 12.1352 9.1199C12.0834 8.99034 12.0075 8.87262 11.9117 8.77346C11.816 8.6743 11.7023 8.59564 11.5772 8.54198C11.4521 8.48831 11.3181 8.46069 11.1827 8.46069C11.0473 8.46069 10.9132 8.48831 10.7881 8.54198C10.663 8.59564 10.5494 8.6743 10.4536 8.77346C10.3579 8.87262 10.2819 8.99034 10.2301 9.1199C10.1783 9.24946 10.1516 9.38832 10.1516 9.52855ZM14.2758 9.52855C14.2758 9.81176 14.3844 10.0834 14.5778 10.2836C14.7711 10.4839 15.0334 10.5964 15.3068 10.5964C15.5803 10.5964 15.8425 10.4839 16.0359 10.2836C16.2292 10.0834 16.3378 9.81176 16.3378 9.52855C16.3378 9.24534 16.2292 8.97372 16.0359 8.77346C15.8425 8.5732 15.5803 8.46069 15.3068 8.46069C15.0334 8.46069 14.7711 8.5732 14.5778 8.77346C14.3844 8.97372 14.2758 9.24534 14.2758 9.52855Z" fill="currentColor"/> </svg>
    """
  end
end
