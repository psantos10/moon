defmodule Moon.Assets.Icons.IconAllSports do
  use Moon.StatelessComponent
  use Moon.Components.Context

  prop(color, :string)
  prop(background_color, :string)
  prop(font_size, :string)

  def render(assigns) do
    class_name =
      get_class_name(
        "Icons-IconAllSports-#{assigns.color}-#{assigns.background_color}-#{assigns.font_size}"
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

    <svg class={{ class_name }} width="1em" height="auto"  viewBox="0 0 20 11" version="1.1" xmlns="http://www.w3.org/2000/svg" >   <!-- Generator: Sketch 53 (72520) - https://sketchapp.com -->   <title>icon-all-sports</title>   <desc>Created with Sketch.</desc>   <g id="Icons" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">     <g id="All-Sports" transform="translate(0.000000, -5.000000)" fill="currentColor">       <path d="M4.96130508,15.476948 C5.12929015,15.6601628 5.30643057,15.8347171 5.49199355,15.9998719 C5.47952081,15.9999573 5.46703807,16 5.45454545,16 C2.44689091,16 0,13.5333417 0,10.5 C0,9.03880583 0.571827273,7.7115825 1.49796364,6.72519417 C1.50187273,6.7219125 1.49991818,6.71534 1.50448182,6.71139833 C1.50708182,6.70877667 1.51099091,6.7100875 1.51424545,6.70746583 C2.50811818,5.65802917 3.90512727,5 5.45454545,5 C5.46703807,5 5.479521,5.00004257 5.49199413,5.00012757 C5.30618033,5.16550561 5.12881189,5.34030848 4.96062455,5.52379429 C3.82649151,5.6377913 2.80421764,6.13459796 2.02355455,6.88871833 C2.46226715,7.31351156 2.96375299,7.64704503 3.50763413,7.88069484 C3.44954757,8.03381494 3.39640499,8.18940057 3.34840329,8.34725317 C2.73952068,8.09016728 2.17837819,7.71944349 1.68820909,7.24531083 C0.991981818,8.06357333 0.556263636,9.1077575 0.500909091,10.2537283 L3.03402385,10.2537283 C3.03134829,10.3354872 3.03,10.4175848 3.03,10.5 C3.03,10.5824152 3.03134829,10.6645128 3.03402385,10.7462717 L0.500909091,10.7462717 C0.556263636,11.8922425 0.991981818,12.9364083 1.68755455,13.7547167 C2.17774578,13.2808903 2.73966751,12.9104989 3.34865969,12.6535898 C3.39669088,12.8114711 3.44986502,12.9670841 3.50798504,13.12023 C2.96391833,13.3537902 2.46170754,13.6870461 2.02287273,14.1113 C2.80372671,14.8661774 3.82630963,15.3630654 4.96130508,15.476948 L4.96130508,15.476948 Z M7.6793942,8.07609412 C7.5569578,8.14184088 7.47100717,8.19635992 7.42345455,8.228225 C7.36290909,8.35496333 7.2014,8.72533333 7.08808182,9.26840333 L7.37484891,9.26840333 C7.3476105,9.43081907 7.32566764,9.59505025 7.30920564,9.76091 L7.00988182,9.76091 C6.98382727,9.9828625 6.96559091,10.2205817 6.96754545,10.4766892 C6.96754545,10.4845633 6.96754545,10.4931067 6.9669,10.50033 C6.96754545,10.5082042 6.96754545,10.5160875 6.96754545,10.5239617 C6.96559091,10.7807292 6.98318182,11.0177883 7.00922727,11.23843 L7.30914016,11.23843 C7.32558716,11.4042894 7.34751496,11.5685206 7.37473825,11.7309367 L7.0874,11.7309367 C7.20071818,12.2753267 7.36218182,12.6443583 7.42281818,12.7704917 C7.4704276,12.8022033 7.55642032,12.856393 7.67865587,12.9217783 C7.75735118,13.1486646 7.8467936,13.3704623 7.9463678,13.5865509 C7.76048924,13.512642 7.60389707,13.4384738 7.47754545,13.3713667 L7.47754545,14.6118 C7.86245455,14.8816667 8.28636364,15.0964417 8.73963636,15.2487917 L8.73963636,14.9172594 C9.02439818,15.2972027 9.34499506,15.6483153 9.69635722,15.9654853 C6.97318824,15.6599937 4.84907273,13.3258357 4.84907273,10.49967 C4.84907273,7.67385929 6.97360475,5.33899069 9.69715816,5.03379179 C9.35271821,5.34462128 9.0378317,5.68806423 8.75727273,6.05930673 L8.75727273,5.7446725 C8.29745455,5.89767333 7.867,6.11503333 7.47754545,6.38820917 L7.47754545,7.62867917 C7.60391031,7.56155672 7.76052205,7.48724538 7.94649261,7.41317822 C7.84717964,7.6286769 7.75794339,7.84985401 7.6793942,8.07609412 L7.6793942,8.07609412 Z M5.33744545,10.4996792 C5.33744545,11.9758883 5.97827273,13.3004167 6.98901818,14.2178167 L6.98901818,12.9976417 C6.87374545,12.7619667 6.47452727,11.8511208 6.47908182,10.5456408 C6.47843636,10.5377667 6.47778182,10.5292233 6.47778182,10.522 C6.47778182,10.5082133 6.47908182,10.4944267 6.48103636,10.4806308 L6.47908182,10.4806308 C6.46931818,9.16136417 6.87309091,8.24005 6.98901818,8.00233083 L6.98901818,6.78222917 C5.97827273,7.69960167 5.33744545,9.02412083 5.33744545,10.4996792 Z M18.7195455,10.5 L19.3754545,11.6453108 C19.4613636,11.2768933 19.5115455,10.8946892 19.5115455,10.5 C19.5115455,10.1053108 19.4613636,9.72310667 19.3754545,9.35534 L18.7195455,10.5 Z M16.6400909,14.1586 L15.9933636,15.2887583 C16.7234545,15.064175 17.3792727,14.671475 17.9244545,14.1586 L16.6400909,14.1586 Z M12.4509091,14.1586 L11.1659091,14.1586 C11.711,14.671475 12.3675455,15.064175 13.0976364,15.2887583 L12.4509091,14.1586 Z M12.4509091,6.8414275 L13.0976364,5.71056333 C12.3675455,5.93581583 11.711,6.32853417 11.1659091,6.8414275 L12.4509091,6.8414275 Z M16.64,6.8414275 L17.9243636,6.8414275 C17.3792727,6.32853417 16.7233636,5.93581583 15.9926364,5.71056333 L16.64,6.8414275 Z M18.2969091,10.2537375 L19.1325455,8.79385417 L18.2969091,7.33397083 L16.64,7.33397083 L15.8044545,8.79385417 L16.64,10.2537375 L18.2969091,10.2537375 Z M13.7092727,12.45305 L12.8736364,13.9122917 L13.7092727,15.3728167 L15.3818182,15.3728167 L16.2095455,13.9260417 L15.3661818,12.45305 L13.7092727,12.45305 Z M10.7615455,10.7462717 L9.92590909,12.2068058 L10.7615455,13.6659833 L12.4333636,13.6659833 L13.269,12.2068058 L12.4333636,10.7462717 L10.7615455,10.7462717 Z M12.4333636,7.33397083 L10.7615455,7.33397083 L9.92590909,8.79385417 L10.7615455,10.2537375 L12.4333636,10.2537375 L13.269,8.79385417 L12.4333636,7.33397083 Z M15.3661818,8.5475825 L16.2095455,7.0739125 L15.3818182,5.627825 L13.7092727,5.627825 L12.8736364,7.08769917 L13.7092727,8.5475825 L15.3661818,8.5475825 Z M13.7092727,11.9605342 L15.3661818,11.9605342 L16.2017273,10.5 L15.3661818,9.04011667 L13.7092727,9.04011667 L12.8736364,10.5 L13.7092727,11.9605342 Z M16.64,13.6659833 L18.2969091,13.6659833 L19.1325455,12.2068058 L18.2969091,10.7462717 L16.64,10.7462717 L15.8044545,12.2068058 L16.64,13.6659833 Z M9.57936364,10.5 C9.57936364,10.8802333 9.62554545,11.2499708 9.70563636,11.6059033 L10.3380909,10.5 L9.705,9.3940875 C9.62554545,9.75068 9.57936364,10.1197575 9.57936364,10.5 Z M14.5454545,5 C17.5530909,5 20,7.46728167 20,10.5 C20,13.5327 17.5530909,16 14.5454545,16 C11.5378182,16 9.09090909,13.5327 9.09090909,10.5 C9.09090909,7.46728167 11.5378182,5 14.5454545,5 Z" id="icon-all-sports"></path>     </g>   </g> </svg>
    </Context>
    """
  end
end
