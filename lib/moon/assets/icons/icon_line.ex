defmodule Moon.Assets.Icons.IconLine do
  use Moon.StatelessComponent

  property color, :string
  property background_color, :string

  false

  def render(assigns) do
    class_name = get_class_name("Icons-IconLine-#{assigns[:color]}-#{assigns[:background_color]}")

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

    <svg class={{ class_name }} width="1em" height="1em" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">  <path d="M16.3821 -2.43321e-05H3.64522C1.64534 -0.00267652 0.00293428 1.61683 2.91944e-06 3.61728V16.3542C-0.00250968 18.3548 1.61714 19.9973 3.61731 20H16.3544C18.3547 20.0025 19.9964 18.3831 19.9994 16.3822V3.6452C20.0022 1.64461 18.3829 0.00276744 16.3821 -2.43321e-05Z" fill="#00B900"/>  <path d="M17.2488 9.1206C17.2488 5.86232 13.9824 3.21153 9.96718 3.21153C5.95246 3.21153 2.68567 5.86232 2.68567 9.1206C2.68567 12.0416 5.27616 14.4879 8.77537 14.9505C9.01253 15.0016 9.33526 15.1069 9.41692 15.3095C9.49034 15.4937 9.46494 15.7821 9.44037 15.968C9.44037 15.968 9.35494 16.4818 9.33651 16.5913C9.30483 16.7754 9.19022 17.3113 9.96718 16.9838C10.7444 16.6563 14.1607 14.5146 15.6884 12.7562H15.6881C16.7434 11.599 17.2488 10.4246 17.2488 9.1206Z" fill="white"/>  <path d="M8.48774 7.54604H7.97698C7.89867 7.54604 7.83502 7.60955 7.83502 7.68758V10.8604C7.83502 10.9386 7.89867 11.002 7.97698 11.002H8.48774C8.56605 11.002 8.62956 10.9386 8.62956 10.8604V7.68758C8.62956 7.60955 8.56605 7.54604 8.48774 7.54604Z" fill="#00B900"/>  <path d="M12.0033 7.54604H11.4925C11.4142 7.54604 11.3507 7.60955 11.3507 7.68758V9.57259L9.89677 7.60899C9.89342 7.60397 9.88965 7.59922 9.88574 7.59462L9.88476 7.59378C9.88197 7.59057 9.87918 7.58778 9.87625 7.58498C9.87541 7.58415 9.87457 7.58345 9.8736 7.58261C9.87122 7.58038 9.86871 7.57828 9.86606 7.57633C9.86494 7.57521 9.86369 7.57438 9.86243 7.5734C9.85992 7.57172 9.85754 7.56991 9.85503 7.56837C9.85363 7.5674 9.85224 7.56656 9.8507 7.56586C9.84819 7.56432 9.84568 7.56279 9.84317 7.56153C9.84163 7.56084 9.84023 7.56 9.8387 7.55944C9.83605 7.55818 9.83339 7.55693 9.8306 7.55595C9.82893 7.55539 9.82753 7.55483 9.826 7.55427C9.8232 7.5533 9.82041 7.55232 9.81748 7.55162C9.81595 7.55106 9.81427 7.55078 9.8126 7.55023C9.8098 7.54967 9.80715 7.54897 9.8045 7.54841C9.80255 7.54813 9.80045 7.54785 9.7985 7.54771C9.79598 7.54716 9.79347 7.54702 9.79096 7.54674C9.78859 7.54646 9.78621 7.54646 9.7837 7.54632C9.78189 7.54632 9.78049 7.54604 9.77868 7.54604H9.26806C9.18975 7.54604 9.1261 7.60955 9.1261 7.68758V10.8604C9.1261 10.9386 9.18975 11.002 9.26806 11.002H9.77868C9.85712 11.002 9.92064 10.9386 9.92064 10.8604V8.97599L11.3764 10.9421C11.3865 10.9563 11.3989 10.9679 11.4124 10.9771C11.4128 10.9774 11.4134 10.9778 11.4138 10.9782C11.4167 10.9801 11.4197 10.9819 11.4226 10.9836C11.424 10.9844 11.4253 10.9849 11.4267 10.9856C11.4288 10.9869 11.4311 10.988 11.4334 10.989C11.4357 10.99 11.4378 10.9909 11.4403 10.9919C11.4417 10.9925 11.4431 10.993 11.4445 10.9935C11.4479 10.9947 11.4509 10.9957 11.4542 10.9967C11.4549 10.9967 11.4556 10.997 11.4563 10.9971C11.4678 11.0002 11.48 11.002 11.4925 11.002H12.0033C12.0818 11.002 12.1451 10.9386 12.1451 10.8604V7.68758C12.1451 7.60955 12.0818 7.54604 12.0033 7.54604Z" fill="#00B900"/>  <path d="M7.25653 10.2075H5.86874V7.68781C5.86874 7.6095 5.80523 7.54599 5.72706 7.54599H5.21616C5.13785 7.54599 5.07434 7.6095 5.07434 7.68781V10.8601V10.8604C5.07434 10.8985 5.08956 10.933 5.11398 10.9584C5.11454 10.9591 5.1151 10.9598 5.11594 10.9605C5.11664 10.9612 5.11733 10.9617 5.11803 10.9624C5.14358 10.987 5.17792 11.0021 5.21602 11.0021H5.21616H7.25653C7.33484 11.0021 7.39807 10.9384 7.39807 10.8601V10.3494C7.39807 10.271 7.33484 10.2075 7.25653 10.2075Z" fill="#00B900"/>  <path d="M14.8239 8.34053C14.9022 8.34053 14.9654 8.27716 14.9654 8.19871V7.68795C14.9654 7.60964 14.9022 7.54599 14.8239 7.54599H12.7835H12.7832C12.745 7.54599 12.7105 7.56134 12.6849 7.58605C12.6844 7.58661 12.6837 7.58703 12.6833 7.58759C12.6824 7.58843 12.6817 7.58926 12.681 7.5901C12.6567 7.61551 12.6417 7.64984 12.6417 7.68781V7.68795V10.8602V10.8604C12.6417 10.8985 12.6569 10.933 12.6813 10.9584C12.6819 10.9591 12.6826 10.9599 12.6833 10.9605C12.6838 10.9612 12.6847 10.9619 12.6854 10.9624C12.7108 10.9869 12.7452 11.0021 12.7832 11.0021H12.7835H14.8239C14.9022 11.0021 14.9654 10.9384 14.9654 10.8602V10.3494C14.9654 10.2712 14.9022 10.2075 14.8239 10.2075H13.4362V9.67123H14.8239C14.9022 9.67123 14.9654 9.60772 14.9654 9.52941V9.01865C14.9654 8.94034 14.9022 8.87669 14.8239 8.87669H13.4362V8.34053H14.8239Z" fill="#00B900"/> </svg>
    """
  end
end
