defmodule Moon.Assets.Icons.IconProfile do
  use Moon.StatelessComponent

  property color, :string
  property background_color, :string

  def render(assigns) do
    class_name =
      get_class_name("Icons-IconProfile-#{assigns[:color]}-#{assigns[:background_color]}")

    ~H"""
    <style>
      .{{ class_name }} {
        vertical-align: middle;
        color: {{ @color }};
        background-color: {{ @background_color }};
      }
    </style>

    <svg class={{ class_name }} width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg"> <path fill-rule="evenodd" clip-rule="evenodd" d="M9.98129 0C4.46663 0 0 4.4722 0 9.99375C0 10.3186 0.0124766 10.6433 0.0499064 10.9681C0.062383 11.0806 0.0873362 11.193 0.0998129 11.3179C0.124766 11.5053 0.149719 11.7052 0.187149 11.9051C0.212102 12.0425 0.249532 12.1799 0.286962 12.3298C0.324392 12.4922 0.361822 12.6546 0.411728 12.8045C0.461634 12.9544 0.511541 13.1168 0.561447 13.2667C0.611354 13.4041 0.66126 13.529 0.711167 13.6665C0.77355 13.8289 0.848409 13.9913 0.923269 14.1537C0.973175 14.2661 1.02308 14.366 1.08546 14.4785C1.1728 14.6533 1.26014 14.8157 1.35995 14.9781C1.40986 15.0656 1.45976 15.1405 1.50967 15.228C1.62196 15.4029 1.73425 15.5778 1.84654 15.7527C1.88397 15.8026 1.93387 15.8651 1.9713 15.9151C3.15658 17.5265 4.81597 18.7758 6.74984 19.4379C6.78727 19.4503 6.81223 19.4628 6.83718 19.4753C7.29881 19.6252 7.77293 19.7502 8.25951 19.8376C8.34685 19.8501 8.42171 19.8626 8.50905 19.8751C8.99563 19.95 9.4947 20 10.0062 20C10.5178 20 11.0168 19.95 11.5034 19.8751C11.5908 19.8626 11.6656 19.8501 11.753 19.8376C12.2396 19.7502 12.7137 19.6377 13.1753 19.4753C13.2127 19.4628 13.2377 19.4503 13.2626 19.4379C15.1965 18.7633 16.8559 17.5265 18.0412 15.9151C18.0786 15.8651 18.116 15.8151 18.1535 15.7527C18.2782 15.5778 18.3905 15.4029 18.5028 15.228C18.5527 15.1405 18.6026 15.0656 18.6525 14.9781C18.7523 14.8157 18.8397 14.6408 18.927 14.466C18.9769 14.366 19.0268 14.2536 19.0767 14.1412C19.1516 13.9788 19.214 13.8164 19.2888 13.654C19.3387 13.529 19.3886 13.3916 19.4386 13.2542C19.4885 13.1043 19.5384 12.9544 19.5883 12.792C19.6382 12.6296 19.6756 12.4797 19.713 12.3173C19.7505 12.1799 19.7879 12.0425 19.8129 11.8926C19.8503 11.6927 19.8752 11.5053 19.9002 11.3054C19.9127 11.193 19.9376 11.0806 19.9501 10.9557C19.975 10.6309 20 10.3186 20 9.98126C19.9626 4.47221 15.4959 0 9.98129 0ZM9.98129 17.9888C7.51092 17.9888 5.30256 16.8645 3.84279 15.1031C4.67873 14.6533 5.70181 14.2786 6.51279 13.9163C7.96008 13.2667 7.81036 12.867 7.86026 12.3298C7.87274 12.2548 7.87274 12.1924 7.87274 12.1174C7.3612 11.6677 6.94947 11.0431 6.67498 10.3186V10.3061C6.67498 10.2936 6.66251 10.2811 6.66251 10.2811C6.60012 10.1187 6.55022 9.95628 6.51279 9.79388C6.16344 9.73142 5.96382 9.35665 5.88896 9.00687C5.8141 8.86946 5.66438 8.53217 5.70181 8.14491C5.75172 7.63273 5.95134 7.40787 6.17592 7.30793C6.17592 7.28295 6.17592 7.25796 6.17592 7.23298C6.17592 6.59588 6.2383 5.68395 6.35059 5.08432C6.37555 4.92192 6.41298 4.75953 6.46288 4.59713C6.67498 3.86009 7.12414 3.198 7.72302 2.73579C8.33437 2.26109 9.20774 1.99875 9.99376 1.99875C10.7673 1.99875 11.6407 2.24859 12.2645 2.73579C12.8634 3.198 13.3125 3.86009 13.5246 4.59713C13.5745 4.75953 13.612 4.92192 13.6369 5.09681C13.7492 5.69644 13.8116 6.60837 13.8116 7.24547C13.8116 7.27046 13.8116 7.30793 13.8116 7.33292C14.0362 7.43285 14.2233 7.65771 14.2732 8.1574C14.3107 8.54466 14.1485 8.88195 14.0736 9.01936C13.9988 9.35665 13.8116 9.73142 13.4747 9.79388C13.4373 9.95628 13.3874 10.1187 13.325 10.2686C13.325 10.2811 13.3125 10.3186 13.3125 10.3186C13.0505 11.0306 12.6388 11.6427 12.1397 12.0924C12.1397 12.1674 12.1522 12.2548 12.1522 12.3298C12.2021 12.867 12.0025 13.2667 13.4623 13.9163C14.2732 14.2786 15.2963 14.6658 16.1323 15.1031C14.66 16.8645 12.4517 17.9888 9.98129 17.9888Z" fill="currentColor"/> </svg>
    """
  end
end
