defmodule Moon.Assets.Icons do
  use Moon.StatelessComponent

  alias Moon.Assets.Icons

  property name, :string
  property color, :string
  property background_color, :string

  @assets_map %{
    about: Icons.IconAbout,
    add: Icons.IconAdd,
    alert_circle: Icons.IconAlertCircle,
    align_left: Icons.IconAlignLeft,
    all_sports: Icons.IconAllSports,
    arrow_diagonal_bottom_left: Icons.IconArrowDiagonalBottomLeft,
    arrow_diagonal_top_right: Icons.IconArrowDiagonalTopRight,
    arrow_down: Icons.IconArrowDown,
    arrow_left_right: Icons.IconArrowLeftRight,
    arrow_left: Icons.IconArrowLeft,
    arrow_right: Icons.IconArrowRight,
    arrow_top_right: Icons.IconArrowTopRight,
    arrow_up_down: Icons.IconArrowUpDown,
    arrow_up: Icons.IconArrowUp,
    asian_view: Icons.IconAsianView,
    award: Icons.IconAward,
    banner_info: Icons.IconBannerInfo,
    bell: Icons.IconBell,
    bitcoin_talk: Icons.IconBitcoinTalk,
    bombay_club: Icons.IconBombayClub,
    calendar_empty: Icons.IconCalendarEmpty,
    calendar: Icons.IconCalendar,
    card: Icons.IconCard,
    cash_out: Icons.IconCashOut,
    casino: Icons.IconCasino,
    chart_area: Icons.IconChartArea,
    chart_bar: Icons.IconChartBar,
    chart_pies: Icons.IconChartPies,
    chart_round: Icons.IconChartRound,
    chart_segment: Icons.IconChartSegment,
    chevron_down_rounded: Icons.IconChevronDownRounded,
    chevron_down: Icons.IconChevronDown,
    chevron_left_rounded: Icons.IconChevronLeftRounded,
    chevron_left: Icons.IconChevronLeft,
    chevron_right_rounded: Icons.IconChevronRightRounded,
    chevron_right: Icons.IconChevronRight,
    chevron_up_down: Icons.IconChevronUpDown,
    chevron_up_rounded: Icons.IconChevronUpRounded,
    chevron_up: Icons.IconChevronUp,
    circle: Icons.IconCircle,
    clock: Icons.IconClock,
    close_rounded: Icons.IconCloseRounded,
    close_small: Icons.IconCloseSmall,
    close: Icons.IconClose,
    code: Icons.IconCode,
    copy: Icons.IconCopy,
    currency_ars: Icons.IconCurrencyARS,
    currency_bdt: Icons.IconCurrencyBDT,
    currency_bob: Icons.IconCurrencyBOB,
    currency_brl: Icons.IconCurrencyBRL,
    currency_btc: Icons.IconCurrencyBTC,
    currency_cad: Icons.IconCurrencyCAD,
    currency_clp: Icons.IconCurrencyCLP,
    currency_cny: Icons.IconCurrencyCNY,
    currency_crc: Icons.IconCurrencyCRC,
    currency_eth: Icons.IconCurrencyETH,
    currency_eur: Icons.IconCurrencyEUR,
    currency_gel: Icons.IconCurrencyGEL,
    currency_hkd: Icons.IconCurrencyHKD,
    currency_idr: Icons.IconCurrencyIDR,
    currency_inr: Icons.IconCurrencyINR,
    currency_iqd: Icons.IconCurrencyIQD,
    currency_jpy: Icons.IconCurrencyJPY,
    currency_krw: Icons.IconCurrencyKRW,
    currency_ltc: Icons.IconCurrencyLTC,
    currency_mxn: Icons.IconCurrencyMXN,
    currency_myr: Icons.IconCurrencyMYR,
    currency_pen: Icons.IconCurrencyPEN,
    currency_pkr: Icons.IconCurrencyPKR,
    currency_rub: Icons.IconCurrencyRUB,
    currency_soc: Icons.IconCurrencySOC,
    currency_thb: Icons.IconCurrencyTHB,
    currency_trx: Icons.IconCurrencyTRX,
    currency_try: Icons.IconCurrencyTRY,
    currency_uah: Icons.IconCurrencyUAH,
    currency_usd: Icons.IconCurrencyUSD,
    currency_usdt: Icons.IconCurrencyUSDT,
    currency_ves: Icons.IconCurrencyVES,
    currency_vnd: Icons.IconCurrencyVND,
    currency_xrp: Icons.IconCurrencyXRP,
    cursor: Icons.IconCursor,
    data: Icons.IconData,
    delete: Icons.IconDelete,
    download: Icons.IconDownload,
    duotone_arrows: Icons.IconDuotoneArrows,
    duotone_chat: Icons.IconDuotoneChat,
    duotone_coins: Icons.IconDuotoneCoins,
    duotone_mail: Icons.IconDuotoneMail,
    e_sports_call_of_duty: Icons.IconESportsCallOfDuty,
    e_sports_counter_strike: Icons.IconESportsCounterStrike,
    e_sports_dota2: Icons.IconESportsDota2,
    e_sports_e_nba: Icons.IconESportsENba,
    e_sports_e_sport: Icons.IconESportsESport,
    e_sports_football: Icons.IconESportsFootball,
    e_sports_hearthstone: Icons.IconESportsHearthstone,
    e_sports_league_of_legends: Icons.IconESportsLeagueOfLegends,
    e_sports_overwatch: Icons.IconESportsOverwatch,
    e_sports_rainbow: Icons.IconESportsRainbow,
    e_sports_rocket_league: Icons.IconESportsRocketLeague,
    e_sports_star_craft: Icons.IconESportsStarCraft,
    edit: Icons.IconEdit,
    error_circle: Icons.IconErrorCircle,
    expand: Icons.IconExpand,
    eye_closed: Icons.IconEyeClosed,
    eye: Icons.IconEye,
    facebook: Icons.IconFacebook,
    filter: Icons.IconFilter,
    forward: Icons.IconForward,
    freebet: Icons.IconFreebet,
    gamepad: Icons.IconGamepad,
    gift: Icons.IconGift,
    globe: Icons.IconGlobe,
    google: Icons.IconGoogle,
    hamburger: Icons.IconHamburger,
    help: Icons.IconHelp,
    history: Icons.IconHistory,
    home: Icons.IconHome,
    hyperlink: Icons.IconHyperlink,
    in_play: Icons.IconInPlay,
    info_circle: Icons.IconInfoCircle,
    info: Icons.IconInfo,
    instagram: Icons.IconInstagram,
    left_arrow_curve_right: Icons.IconLeftArrowCurveRight,
    life_ring: Icons.IconLifeRing,
    line: Icons.IconLine,
    link: Icons.IconLink,
    list_numbered: Icons.IconListNumbered,
    live_chat: Icons.IconLiveChat,
    live_stream: Icons.IconLiveStream,
    login: Icons.IconLogin,
    logo_plain: Icons.IconLogoPlain,
    logout: Icons.IconLogout,
    loyalty_0: Icons.IconLoyalty0,
    mail: Icons.IconMail,
    menu_home: Icons.IconMenuHome,
    minus: Icons.IconMinus,
    moon: Icons.IconMoon,
    news: Icons.IconNews,
    notification_unread: Icons.IconNotificationUnread,
    notification: Icons.IconNotification,
    padlock: Icons.IconPadlock,
    pencil: Icons.IconPencil,
    photo: Icons.IconPhoto,
    picture: Icons.IconPicture,
    pin: Icons.IconPin,
    play: Icons.IconPlay,
    plus: Icons.IconPlus,
    price_boost: Icons.IconPriceBoost,
    print: Icons.IconPrint,
    profile: Icons.IconProfile,
    promotions: Icons.IconPromotions,
    refresh: Icons.IconRefresh,
    sb_shield: Icons.IconSbShield,
    search: Icons.IconSearch,
    settings: Icons.IconSettings,
    share: Icons.IconShare,
    sliders: Icons.IconSliders,
    slots: Icons.IconSlots,
    snackbar_success: Icons.IconSnackbarSuccess,
    sport_widget: Icons.IconSportWidget,
    sports_american_foot_ball: Icons.IconSportsAmericanFootBall,
    sports_badminton: Icons.IconSportsBadminton,
    sports_base_ball: Icons.IconSportsBaseBall,
    sports_basket_ball: Icons.IconSportsBasketBall,
    sports_biathlon: Icons.IconSportsBiathlon,
    sports_boxing: Icons.IconSportsBoxing,
    sports_center: Icons.IconSportsCenter,
    sports_cricket: Icons.IconSportsCricket,
    sports_cycling: Icons.IconSportsCycling,
    sports_darts: Icons.IconSportsDarts,
    sports_e_sports: Icons.IconSportsESports,
    sports_fantasy: Icons.IconSportsFantasy,
    sports_featured: Icons.IconSportsFeatured,
    sports_foot_ball: Icons.IconSportsFootBall,
    sports_golf: Icons.IconSportsGolf,
    sports_hand_ball: Icons.IconSportsHandBall,
    sports_horse_racing: Icons.IconSportsHorseRacing,
    sports_ice_hockey: Icons.IconSportsIceHockey,
    sports_mma: Icons.IconSportsMma,
    sports_motor_sports: Icons.IconSportsMotorSports,
    sports_poker: Icons.IconSportsPoker,
    sports_politics: Icons.IconSportsPolitics,
    sports_pool: Icons.IconSportsPool,
    sports_popular: Icons.IconSportsPopular,
    sports_rugby: Icons.IconSportsRugby,
    sports_ski: Icons.IconSportsSki,
    sports_snooker: Icons.IconSportsSnooker,
    sports_special: Icons.IconSportsSpecial,
    sports_squash: Icons.IconSportsSquash,
    sports_table_tennis: Icons.IconSportsTableTennis,
    sports_tennis: Icons.IconSportsTennis,
    sports_volley_ball: Icons.IconSportsVolleyBall,
    sports_water_polo: Icons.IconSportsWaterPolo,
    star_empty: Icons.IconStarEmpty,
    star_filled: Icons.IconStarFilled,
    star_flag: Icons.IconStarFlag,
    stars: Icons.IconStars,
    stats: Icons.IconStats,
    stopwatch: Icons.IconStopwatch,
    success_circle: Icons.IconSuccessCircle,
    sun: Icons.IconSun,
    support: Icons.IconSupport,
    table: Icons.IconTable,
    tag: Icons.IconTag,
    telegram: Icons.IconTelegram,
    text: Icons.IconText,
    timer: Icons.IconTimer,
    twitter: Icons.IconTwitter,
    upload: Icons.IconUpload,
    user: Icons.IconUser,
    users: Icons.IconUsers,
    virtual_sports: Icons.IconVirtualSports,
    vkontakte: Icons.IconVkontakte,
    wallet_rounded: Icons.IconWalletRounded,
    wallet: Icons.IconWallet,
    wand: Icons.IconWand,
    warning: Icons.IconWarning,
    whatsapp: Icons.IconWhatsapp,
    youtube: Icons.IconYoutube,
    error: Icons.IconError,
    general_info: Icons.IconGeneralInfo,
    google_auth: Icons.IconGoogleAuth,
    live_casino: Icons.IconLiveCasino,
    lock: Icons.IconLock,
    sports_greyhound: Icons.IconSportsGreyhound,
    sports_harness: Icons.IconSportsHarness,
    sports_horse: Icons.IconSportsHorse,
    verify: Icons.IconVerify
  }

  def icon_name_to_module(icon_name) do
    @assets_map[:"#{icon_name}"]
  end

  def render(assigns) do
    ~H"""
    {{ @name && icon_name_to_module(@name) && live_component(@socket, icon_name_to_module(@name), color: @color, background_color: @background_color) }}
    """
  end
end
