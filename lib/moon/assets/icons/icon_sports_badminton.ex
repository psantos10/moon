defmodule Moon.Assets.Icons.IconSportsBadminton do
  use Moon.StatelessComponent

  property color, :string
  property background_color, :string

  false

  def render(assigns) do
    class_name =
      get_class_name("Icons-IconSportsBadminton-#{assigns[:color]}-#{assigns[:background_color]}")

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

    <svg class={{ class_name }} width="1em" height="1em" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">  <path fill-rule="evenodd" clip-rule="evenodd" d="M15.7814 3.74952C16.0268 3.74952 16.2274 3.94922 16.2274 4.19552C16.2274 4.19933 16.2265 4.20313 16.2265 4.20598H15.3373C15.3373 4.20313 15.3354 4.19933 15.3354 4.19552C15.3354 3.94922 15.5361 3.74952 15.7814 3.74952ZM16.7257 6.65854C16.6364 6.6205 16.5346 6.61765 16.4443 6.65759L15.7691 6.94384L15.0977 6.70799C15.0587 6.69468 15.0188 6.68802 14.9788 6.68802C14.9379 6.68802 14.898 6.69468 14.859 6.70799L14.723 6.75744L15.2479 4.91921H16.3149L16.8227 6.70039L16.7257 6.65854ZM14.1895 7.68369C14.2304 7.68369 14.2703 7.67704 14.3103 7.66277L14.9798 7.42217L15.6626 7.66277C15.7472 7.6932 15.8394 7.69035 15.9212 7.65421L16.5822 7.37368L17.2307 7.65326C17.3572 7.71032 17.5046 7.68559 17.6073 7.59525C17.7119 7.50396 17.7537 7.36131 17.7157 7.22913L16.9274 4.4656C16.9245 4.45609 16.914 4.45038 16.9102 4.44183C16.9112 4.43707 16.915 4.43327 16.9159 4.42851C16.9321 4.35148 16.9407 4.27255 16.9407 4.19552C16.9407 3.55647 16.4205 3.03629 15.7814 3.03629C15.1424 3.03629 14.6222 3.55647 14.6222 4.19552C14.6222 4.27921 14.6355 4.36099 14.6536 4.44088C14.6498 4.45038 14.6393 4.45514 14.6365 4.4656L13.8472 7.22913C13.8101 7.35751 13.8481 7.4954 13.9461 7.58669C14.0136 7.65041 14.1001 7.68369 14.1895 7.68369ZM17.3715 18.1396L14.0583 14.8255L14.4406 14.4432C14.4406 14.4423 14.4415 14.4423 14.4415 14.4423C14.4425 14.4423 14.4415 14.4413 14.4425 14.4413L14.8267 14.0571L18.1389 17.3703L17.3715 18.1396ZM3.23715 9.73019C2.29949 8.79443 1.76029 7.57433 1.71654 6.29622C1.6728 5.02763 2.12546 3.85222 2.98895 2.98874C3.81534 2.16234 4.92513 1.71253 6.13001 1.71253C6.18517 1.71253 6.24127 1.71349 6.29643 1.71539C7.57549 1.75913 8.79463 2.30024 9.73134 3.23694C10.6681 4.1727 11.2082 5.3928 11.2519 6.67091C11.2957 7.9395 10.844 9.11491 9.97955 9.97839C8.18886 11.77 5.16382 11.6578 3.23715 9.73019ZM18.8959 17.1183L15.0787 13.3001C14.9446 13.1661 14.7078 13.1651 14.5737 13.3011L14.1895 13.6853L10.7232 10.218C11.5686 9.24329 12.0108 7.99086 11.9652 6.64618C11.9148 5.18739 11.3014 3.79707 10.2354 2.73293C9.17122 1.66689 7.7809 1.05256 6.32115 1.00216C4.85 0.962217 3.49011 1.47764 2.48493 2.48377C1.4788 3.4899 0.952913 4.8517 1.00331 6.32C1.05372 7.77974 1.66709 9.17006 2.73218 10.2342C3.88096 11.3839 5.37494 11.965 6.83563 11.965C8.06143 11.965 9.25205 11.5342 10.2059 10.7087L13.6855 14.1902L13.3013 14.5744C13.1625 14.7123 13.1625 14.9396 13.3013 15.0785L17.1195 18.8966C17.186 18.9632 17.2764 19.0003 17.3715 19.0003C17.4656 19.0003 17.5569 18.9622 17.6235 18.8957L18.8959 17.6223C19.0347 17.4825 19.0347 17.2571 18.8959 17.1183Z" fill="currentColor"/> </svg>
    """
  end
end
