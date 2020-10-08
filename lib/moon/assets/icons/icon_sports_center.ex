defmodule Moon.Assets.Icons.IconSportsCenter do
  use Moon.StatelessComponent

  property color, :string
  property background_color, :string

  false

  def render(assigns) do
    class_name =
      get_class_name("Icons-IconSportsCenter-#{assigns[:color]}-#{assigns[:background_color]}")

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

    <svg class={{ class_name }} width="1em" height="auto" viewBox="0 0 17 16" fill="none" xmlns="http://www.w3.org/2000/svg"> <path fill-rule="evenodd" clip-rule="evenodd" d="M6.99914 5.49933L6.99246 1.49731C6.99108 0.670109 6.32072 0 5.49395 0C4.3615 0 3.30272 0.0754561 2.31752 0.226759C1.23918 0.392365 0.392806 1.23818 0.226484 2.3164C0.0731121 3.31068 -0.00224577 4.37199 5.09447e-05 5.50034C4.99091e-05 6.3275 0.670808 6.99914 1.49856 6.99914H5.50063C6.32838 6.99914 6.99914 6.3275 6.99914 5.49933ZM15.779 2.31625C15.6125 1.23818 14.7661 0.392586 13.6879 0.227076C12.7008 0.0755619 11.64 0 10.5053 0C9.67795 0 9.00687 0.669963 9.00549 1.49731L8.99879 5.49849C8.99879 6.32765 9.67028 6.99914 10.4986 6.99914H14.5059C15.3342 6.99914 16.0057 6.32765 16.0057 5.49933C16.008 4.37194 15.9326 3.31058 15.779 2.31625ZM9.99857 5.49942L10.0053 1.49908C10.0057 1.2233 10.2294 0.999974 10.5052 0.999974C11.5907 0.999974 12.601 1.07194 13.5361 1.21548C14.183 1.31478 14.6908 1.82214 14.7907 2.46898C14.9362 3.41052 15.008 4.42033 15.0058 5.4984C15.0058 5.77553 14.7819 5.99936 14.5058 5.99936H10.4985C10.2224 5.99936 9.99857 5.77553 9.99857 5.49942ZM2.46919 1.21515C1.82219 1.31451 1.31437 1.822 1.21458 2.46893C1.06934 3.41049 0.997633 4.42032 0.999828 5.49942C0.999828 5.77568 1.22322 5.99936 1.49846 5.99936H5.50053C5.77577 5.99936 5.99917 5.77568 5.99917 5.50026L5.99248 1.49908C5.99202 1.22315 5.76877 0.999974 5.49385 0.999974C4.41065 0.999974 3.4024 1.07183 2.46919 1.21515ZM13.5361 14.7827C14.183 14.6833 14.6908 14.176 14.7907 13.5292C14.9362 12.5876 15.008 11.5778 15.0058 10.4987C15.0058 10.2226 14.7819 9.99877 14.5058 9.99877H10.4985C10.2224 9.99877 9.99857 10.2226 9.99857 10.4979L10.0053 14.4991C10.0057 14.7748 10.2294 14.9982 10.5052 14.9982C11.5907 14.9982 12.601 14.9262 13.5361 14.7827ZM8.99879 10.4988L9.00549 14.5008C9.00687 15.3282 9.67795 15.9981 10.5053 15.9981C11.64 15.9981 12.7008 15.9226 13.6879 15.7711C14.7661 15.6055 15.6125 14.76 15.779 13.6819C15.9326 12.6876 16.008 11.6262 16.0057 10.4978C16.0057 9.67048 15.3343 8.99899 14.5059 8.99899H10.4986C9.67029 8.99899 8.99879 9.67048 8.99879 10.4988ZM5.99248 14.4991L5.99917 10.4987C5.99917 10.2225 5.77577 9.99877 5.50053 9.99877H1.49846C1.22322 9.99877 0.999829 10.2225 0.999828 10.4997C0.997634 11.5778 1.06934 12.5876 1.21458 13.5292C1.31437 14.1761 1.82219 14.6836 2.46919 14.783C3.4024 14.9263 4.41065 14.9982 5.49385 14.9982C5.76877 14.9982 5.99202 14.775 5.99248 14.4991ZM0.226485 13.6817C0.392807 14.76 1.23918 15.6058 2.31752 15.7714C3.30272 15.9227 4.3615 15.9981 5.49395 15.9981C6.32072 15.9981 6.99108 15.328 6.99246 14.5008L6.99914 10.4996C6.99914 9.67063 6.32838 8.99899 5.50063 8.99899H1.49856C0.67081 8.99899 5.08994e-05 9.67063 5.08994e-05 10.4988C-0.00224478 11.6261 0.0731131 12.6874 0.226485 13.6817Z" fill="currentColor"/> </svg>
    """
  end
end
