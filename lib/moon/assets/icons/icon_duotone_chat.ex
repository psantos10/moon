defmodule Moon.Assets.Icons.IconDuotoneChat do
  use Moon.StatelessComponent
  use Moon.Components.Context

  prop(color, :string)
  prop(background_color, :string)
  prop(font_size, :string)

  def render(assigns) do
    class_name =
      get_class_name(
        "Icons-IconDuotoneChat-#{assigns.color}-#{assigns.background_color}-#{assigns.font_size}"
      )

    ~H"""
    <Context get={{ theme: theme }}>
    <style>
      .{{ class_name }} {
        vertical-align: middle;
        width: 1em;
        color: {{ get_color(@color, theme) }};
        background-color: {{ get_color(@background_color, theme) }};
        font-size: {{ @font_size }};
        display: inline-block;
        overflow: hidden;
        
      }
    </style>

    <svg class={{ class_name }} width="1em" height="auto"  viewBox="0 0 20 19" fill="none" xmlns="http://www.w3.org/2000/svg"> <g id="icon-duotone-chat"> <path id="Shadow" fill-rule="evenodd" clip-rule="evenodd" d="M16.3524 15.5108H13.1464V18.0759C13.1464 18.2054 13.0682 18.3224 12.9482 18.3721C12.9085 18.3885 12.8668 18.3965 12.8254 18.3965C12.7421 18.3965 12.6603 18.3638 12.5988 18.3026L9.80698 15.5108H1.60318C0.719187 15.5108 0 14.7916 0 13.9076V3.64724C0 2.76324 0.719187 2.04406 1.60318 2.04406H16.3524C17.2364 2.04406 17.9559 2.76324 17.9559 3.64724V13.9076C17.9559 14.7916 17.2364 15.5108 16.3524 15.5108Z" fill="white" fill-opacity="0.1"/> <path id="Bubble" fill-rule="evenodd" clip-rule="evenodd" d="M15.1905 13.4667H18.3965C19.2805 13.4667 20 12.7475 20 11.8635V1.60318C20 0.719187 19.2805 0 18.3965 0H3.64724C2.76324 0 2.04406 0.719187 2.04406 1.60318V11.8635C2.04406 12.7475 2.76324 13.4667 3.64724 13.4667H11.851L14.6428 16.2585C14.7044 16.3197 14.7861 16.3524 14.8695 16.3524C14.9109 16.3524 14.9525 16.3444 14.9923 16.3281C15.1122 16.2784 15.1905 16.1613 15.1905 16.0318V13.4667ZM18.3965 0.641275C18.9272 0.641275 19.3584 1.07285 19.3584 1.60318V11.8635C19.3584 12.3939 18.9272 12.8254 18.3965 12.8254H14.8695C14.6925 12.8254 14.5489 12.9691 14.5489 13.1461V15.2578L12.2105 12.9194C12.1505 12.8591 12.0691 12.8254 11.9838 12.8254H3.64725C3.11691 12.8254 2.68534 12.3939 2.68534 11.8635V1.60318C2.68534 1.07285 3.11691 0.641275 3.64725 0.641275H18.3965ZM13.587 6.41272C13.587 7.12004 14.1625 7.69526 14.8695 7.69526C15.5768 7.69526 16.1521 7.12004 16.1521 6.41272C16.1521 5.7054 15.5768 5.13017 14.8695 5.13017C14.1625 5.13017 13.587 5.7054 13.587 6.41272ZM14.2282 6.41272C14.2282 6.05906 14.5158 5.77145 14.8695 5.77145C15.2232 5.77145 15.5108 6.05906 15.5108 6.41272C15.5108 6.76638 15.2232 7.05399 14.8695 7.05399C14.5158 7.05399 14.2282 6.76638 14.2282 6.41272ZM9.73933 6.41272C9.73933 7.12004 10.3149 7.69526 11.0219 7.69526C11.7292 7.69526 12.3044 7.12004 12.3044 6.41272C12.3044 5.7054 11.7292 5.13017 11.0219 5.13017C10.3149 5.13017 9.73933 5.7054 9.73933 6.41272ZM10.3806 6.41272C10.3806 6.05906 10.6685 5.77145 11.0219 5.77145C11.3755 5.77145 11.6635 6.05906 11.6635 6.41272C11.6635 6.76638 11.3755 7.05399 11.0219 7.05399C10.6685 7.05399 10.3806 6.76638 10.3806 6.41272ZM5.8917 6.41272C5.8917 7.12004 6.46724 7.69526 7.17424 7.69526C7.88157 7.69526 8.45679 7.12004 8.45679 6.41272C8.45679 5.7054 7.88157 5.13017 7.17424 5.13017C6.46724 5.13017 5.8917 5.7054 5.8917 6.41272ZM6.53298 6.41272C6.53298 6.05906 6.82059 5.77145 7.17425 5.77145C7.52791 5.77145 7.81584 6.05906 7.81584 6.41272C7.81584 6.76638 7.52791 7.05399 7.17425 7.05399C6.82059 7.05399 6.53298 6.76638 6.53298 6.41272Z" fill="#8697A2"/> </g> </svg>
    </Context>
    """
  end
end
