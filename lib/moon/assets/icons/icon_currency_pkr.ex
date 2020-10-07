defmodule Moon.Assets.Icons.IconCurrencyPKR do
  use Moon.StatelessComponent

  property color, :string
  property background_color, :string

  def render(assigns) do
    class_name =
      get_class_name("Icons-IconCurrencyPKR-#{assigns[:color]}-#{assigns[:background_color]}")

    ~H"""
    <style>
      .{{ class_name }} {
        vertical-align: middle;
        color: {{ @color }};
        background-color: {{ @background_color }};
      }
    </style>

    <svg class={{ class_name }} width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg"> <path d="M4.62299 2C6.5513 2 7.96869 2.36832 8.87515 3.10497C9.7981 3.84162 10.2596 5.01289 10.2596 6.61879C10.2596 7.69429 10.0206 8.55617 9.54265 9.20442C9.06469 9.85267 8.45488 10.3462 7.71323 10.6851L11.2979 17.779H7.44129L4.57355 11.7238H3.48578V17.779H0V2H4.62299ZM4.30161 4.74033H3.48578V9.00553H4.35105C5.20808 9.00553 5.81788 8.82136 6.18047 8.45304C6.55954 8.08471 6.74907 7.5396 6.74907 6.81768C6.74907 6.0663 6.5513 5.53591 6.15575 5.22652C5.7602 4.90239 5.14215 4.74033 4.30161 4.74033ZM15.8962 5.49171C16.6049 5.49171 17.2806 5.56538 17.9234 5.71271C18.5661 5.86004 19.2171 6.10313 19.8764 6.44199L18.9864 8.80663C18.459 8.55617 17.9563 8.34991 17.4784 8.18785C17.0004 8.01105 16.5225 7.92265 16.0445 7.92265C15.171 7.92265 14.7342 8.20258 14.7342 8.76243C14.7342 8.95396 14.7837 9.13076 14.8826 9.29282C14.9979 9.44015 15.2204 9.60221 15.5501 9.77901C15.8797 9.9558 16.3576 10.1915 16.9839 10.4862C17.5937 10.7661 18.1211 11.0534 18.5661 11.3481C19.0276 11.6427 19.382 12.011 19.6292 12.453C19.8764 12.895 20 13.477 20 14.1989C20 15.4217 19.588 16.3646 18.7639 17.0276C17.9563 17.6759 16.7614 18 15.1792 18C14.3881 18 13.7124 17.9411 13.152 17.8232C12.5917 17.7201 12.0231 17.5433 11.4462 17.2928V14.5746C12.0231 14.8692 12.6411 15.1123 13.3004 15.3039C13.9761 15.4954 14.5694 15.5912 15.0803 15.5912C15.6572 15.5912 16.0692 15.4954 16.3164 15.3039C16.5801 15.1123 16.712 14.8619 16.712 14.5525C16.712 14.3462 16.6625 14.1621 16.5637 14C16.4648 13.8232 16.2505 13.6317 15.9209 13.4254C15.5913 13.2044 15.0803 12.9319 14.3881 12.6077C13.3663 12.1363 12.6164 11.6427 12.1384 11.1271C11.6605 10.6114 11.4215 9.8895 11.4215 8.96133C11.4215 7.84162 11.8253 6.98711 12.6329 6.39779C13.4569 5.79374 14.5447 5.49171 15.8962 5.49171Z" fill="currentColor"/> </svg>
    """
  end
end
