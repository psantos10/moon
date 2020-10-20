defmodule Moon.Assets.Duotones.NoReward do
  use Moon.StatelessComponent
  use Moon.Components.Context

  prop(color, :string)
  prop(height, :string)
  prop(width, :string)
  prop(font_size, :string)
  prop(vertical_align, :string)

  def render(assigns) do
    class_name =
      get_class_name(
        "Duotones-NoReward-#{assigns.color}-#{assigns.height}-#{assigns.width}-#{
          assigns.font_size
        }-#{assigns.vertical_align}"
      )

    ~H"""
    <Context get={{ theme: theme }}>
    <style>
      .{{ class_name }} {
        vertical-align: middle;
        width: 1em;
        
        color: {{ get_color(@color, theme) }};
        height: {{ @height }};
        width: {{ @width }};
        font-size: {{ @font_size }};
        vertical-align: {{ @vertical_align }};
        overflow: hidden;
      }
    </style>

    <svg class={{ class_name }} width="1em" height="1em"  viewBox="0 0 174 174" fill="none" xmlns="http://www.w3.org/2000/svg"> <g filter="url(#filter0_d)"> <path opacity="0.1" d="M77.2559 125.831C100.816 125.831 119.915 106.732 119.915 83.172C119.915 59.6121 100.816 40.513 77.2559 40.513C53.696 40.513 34.5969 59.6121 34.5969 83.172C34.5969 106.732 53.696 125.831 77.2559 125.831Z" fill="currentColor"/> <path d="M58.1818 129.311L58.1818 129.311L58.1772 129.305C57.2793 128.254 57.0201 126.843 57.4591 125.526C57.4591 125.525 57.4592 125.525 57.4592 125.525L64.1278 105.635C64.2469 105.299 64.5814 105.144 64.8817 105.249C65.2197 105.367 65.3764 105.703 65.271 106.004L65.2709 106.004L65.2688 106.01L58.6004 125.899C58.6001 125.9 58.5998 125.901 58.5996 125.902C58.278 126.834 58.4998 127.794 59.0903 128.524L59.4789 128.209L59.0903 128.524C59.7059 129.284 60.6726 129.598 61.5849 129.457L61.5881 129.457L70.0851 128.094L70.0865 128.093C71.3411 127.889 72.6279 128.323 73.5322 129.252C73.5326 129.253 73.533 129.253 73.5334 129.254L79.4758 135.457L79.4757 135.457L79.4833 135.465C80.1426 136.124 81.0668 136.452 82.0334 136.237L82.0334 136.237L82.0373 136.236C82.9603 136.023 83.702 135.35 84.0193 134.468L84.0194 134.468L84.0229 134.458L92.6918 108.654C92.6921 108.653 92.6925 108.652 92.6928 108.651C92.8119 108.315 93.1464 108.16 93.4467 108.265C93.7847 108.383 93.9414 108.719 93.836 109.02L93.8359 109.02L93.8339 109.026L85.1629 134.836L85.1625 134.837C84.7265 136.145 83.6495 137.098 82.3055 137.408C81.9686 137.486 81.6876 137.511 81.4029 137.511C80.3547 137.511 79.3523 137.077 78.602 136.301C78.6018 136.301 78.6016 136.301 78.6014 136.3L72.6604 130.099C72.66 130.098 72.6596 130.098 72.6592 130.097C72.0558 129.459 71.1377 129.138 70.2733 129.282C70.2728 129.282 70.2722 129.282 70.2717 129.282L61.7823 130.644C61.7815 130.644 61.7808 130.644 61.7801 130.644C60.4081 130.85 59.0497 130.357 58.1818 129.311Z" fill="white" stroke="white"/> <path d="M97.822 137.41L97.8221 137.41L97.8132 137.408C96.4694 137.098 95.3926 136.145 94.9563 134.838C94.9563 134.837 94.9562 134.837 94.9561 134.837L89.5045 118.337L89.5046 118.337L89.5017 118.329C89.3963 118.028 89.553 117.692 89.891 117.574C90.1909 117.469 90.525 117.624 90.6445 117.959L96.0658 134.455L96.0656 134.455L96.0703 134.468C96.3852 135.343 97.0939 136.022 98.0543 136.237C98.9814 136.45 99.9432 136.162 100.614 135.456C100.615 135.456 100.615 135.456 100.615 135.455L106.559 129.251L106.559 129.251L106.563 129.246C106.782 129.012 107.181 129 107.41 129.23C107.667 129.487 107.662 129.866 107.439 130.088L107.439 130.088L107.432 130.096L101.488 136.3C101.488 136.301 101.488 136.301 101.488 136.301C100.737 137.077 99.7349 137.511 98.6868 137.511C98.4003 137.511 98.123 137.485 97.822 137.41Z" fill="white" stroke="white"/> <path d="M122.467 83.259C123.018 81.519 124.294 79.953 125.512 78.416C127.078 76.473 128.528 74.646 128.528 72.703C128.528 70.76 127.049 68.933 125.512 66.99C124.294 65.453 123.018 63.887 122.467 62.147C121.887 60.32 121.974 58.261 122.061 56.26C122.177 53.824 122.264 51.533 121.191 50.054C120.089 48.546 117.856 47.937 115.507 47.27C113.593 46.748 111.592 46.197 110.055 45.066C108.547 43.964 107.416 42.253 106.343 40.6C104.98 38.541 103.704 36.598 101.906 36.018C100.195 35.467 98.0779 36.25 95.8159 37.091C93.9019 37.787 91.9299 38.541 89.9869 38.541C88.0439 38.541 86.0429 37.816 84.1579 37.091C82.4179 36.453 80.7649 35.815 79.3149 35.815C78.8799 35.815 78.4739 35.873 78.0679 35.989C76.2699 36.569 74.9939 38.512 73.6309 40.571C72.5289 42.224 71.4269 43.935 69.9189 45.037C68.3819 46.139 66.4099 46.69 64.4669 47.241C62.1179 47.908 59.8849 48.517 58.7829 50.025C57.7099 51.504 57.7969 53.795 57.9129 56.231C57.9999 58.232 58.0869 60.32 57.5069 62.118C56.9559 63.858 55.6799 65.424 54.4619 66.961C52.8959 68.904 51.4459 70.731 51.4459 72.674C51.4459 74.617 52.9249 76.444 54.4619 78.387C55.6799 79.924 56.9559 81.49 57.5069 83.23C58.0869 85.057 57.9999 87.116 57.9129 89.117C57.7969 91.553 57.7099 93.844 58.7829 95.323C59.8849 96.831 62.1179 97.44 64.4669 98.107C66.3809 98.629 68.3819 99.18 69.9189 100.311C71.4269 101.413 72.5579 103.124 73.6309 104.777C74.9939 106.836 76.2699 108.779 78.0679 109.359C79.7499 109.91 81.8959 109.127 84.1579 108.286C86.0719 107.59 88.0439 106.836 89.9869 106.836C91.9299 106.836 93.9309 107.561 95.8159 108.286L95.0619 110.345C93.3219 109.707 91.5529 109.04 89.9869 109.04C88.4209 109.04 86.6519 109.707 84.9119 110.345C83.0559 111.041 81.1419 111.737 79.2859 111.737C78.6479 111.737 78.0099 111.65 77.3719 111.447C74.8489 110.635 73.2829 108.257 71.7749 105.966C70.7599 104.4 69.7739 102.95 68.6139 102.08C67.4249 101.21 65.6849 100.717 63.8869 100.224C61.2769 99.499 58.5509 98.745 57.0139 96.628C55.4769 94.54 55.5929 91.727 55.7089 89.03C55.7959 87.145 55.8539 85.347 55.3899 83.897C54.9549 82.534 53.8529 81.2 52.7219 79.75C51.0109 77.604 49.2129 75.371 49.2129 72.645C49.2129 69.919 50.9819 67.686 52.7219 65.54C53.8819 64.119 54.9549 62.756 55.3899 61.393C55.8539 59.943 55.7959 58.174 55.7089 56.26C55.5929 53.563 55.4769 50.75 57.0139 48.662C58.5509 46.545 61.2769 45.791 63.8869 45.066C65.7139 44.573 67.4249 44.08 68.6139 43.21C69.8029 42.34 70.7599 40.89 71.7749 39.324C73.2829 37.033 74.8489 34.684 77.3719 33.843C79.8079 33.06 82.3889 34.017 84.9119 34.945C86.6519 35.583 88.4209 36.25 89.9869 36.25C91.5529 36.25 93.3219 35.583 95.0619 34.945C97.5849 34.017 100.166 33.031 102.602 33.843C105.125 34.655 106.691 37.033 108.199 39.324C109.214 40.89 110.2 42.34 111.36 43.21C112.549 44.08 114.289 44.573 116.087 45.066C118.697 45.791 121.423 46.545 122.96 48.662C124.497 50.779 124.381 53.563 124.265 56.26C124.178 58.145 124.12 59.943 124.584 61.393C125.019 62.756 126.121 64.09 127.252 65.54C128.963 67.686 130.761 69.919 130.761 72.645C130.761 75.371 128.992 77.604 127.252 79.75C126.092 81.171 125.019 82.534 124.584 83.897L122.467 83.259Z" fill="currentColor"/> <path d="M89.9578 98.622C75.676 98.622 64.0388 86.9849 64.0388 72.703C64.0388 58.4212 75.676 46.784 89.9578 46.784C104.24 46.784 115.877 58.4212 115.877 72.703C115.877 86.9849 104.24 98.622 89.9578 98.622ZM89.9578 47.988C76.3417 47.988 65.2428 59.0869 65.2428 72.703C65.2428 86.3191 76.3417 97.418 89.9578 97.418C103.574 97.418 114.673 86.3191 114.673 72.703C114.673 59.0869 103.574 47.988 89.9578 47.988Z" fill="white" stroke="white"/> <path d="M82.7947 83.832H79.9817C78.1989 83.832 76.7407 82.3739 76.7407 80.591V71.34C76.7407 69.5572 78.1989 68.099 79.9817 68.099H82.7947C84.5776 68.099 86.0357 69.5572 86.0357 71.34V80.591C86.0357 82.3764 84.6041 83.832 82.7947 83.832ZM79.9817 69.303C78.8646 69.303 77.9447 70.2229 77.9447 71.34V80.591C77.9447 81.7081 78.8646 82.628 79.9817 82.628H82.7947C83.9119 82.628 84.8317 81.7081 84.8317 80.591V71.34C84.8317 70.2229 83.9119 69.303 82.7947 69.303H79.9817Z" fill="white" stroke="white"/> <path d="M103.407 73.312H103.407L103.407 73.3208C103.431 74.686 102.302 75.828 100.891 75.828C100.558 75.828 100.289 75.5589 100.289 75.226C100.289 74.8932 100.558 74.624 100.891 74.624C101.643 74.624 102.203 74.0115 102.203 73.312C102.203 72.5603 101.59 72 100.891 72C100.558 72 100.289 71.7309 100.289 71.398C100.289 71.0652 100.558 70.796 100.891 70.796C102.294 70.796 103.407 71.932 103.407 73.312Z" fill="white" stroke="white"/> <path d="M100.398 79.685C100.065 79.685 99.7957 79.4159 99.7957 79.083C99.7957 78.7502 100.065 78.481 100.398 78.481C101.149 78.481 101.71 77.8684 101.71 77.169C101.71 76.4579 101.109 75.857 100.398 75.857C100.065 75.857 99.7957 75.5879 99.7957 75.255C99.7957 74.9222 100.065 74.653 100.398 74.653C101.8 74.653 102.914 75.789 102.914 77.169C102.914 78.549 101.8 79.685 100.398 79.685Z" fill="white" stroke="white"/> <path d="M84.9015 81.2511L84.9015 81.2511L84.8996 81.247C84.7509 80.9332 84.8952 80.5849 85.1637 80.4718L85.1738 80.4676L85.1837 80.4629C85.4975 80.3143 85.8458 80.4585 85.9589 80.727L85.9622 80.7349L85.9657 80.7425C86.42 81.727 87.4477 82.0972 88.2154 82.2423C89.0043 82.3915 89.722 82.338 89.6967 82.338H89.8127H99.5277C100.279 82.338 100.84 81.7254 100.84 81.026C100.84 80.3149 100.239 79.714 99.5277 79.714C99.1948 79.714 98.9257 79.4449 98.9257 79.112C98.9257 78.7792 99.1948 78.51 99.5277 78.51C100.93 78.51 102.044 79.646 102.044 81.026C102.044 82.4029 100.905 83.542 99.5277 83.542H89.9256C89.8804 83.5342 89.8404 83.5315 89.8107 83.5302C89.7561 83.5279 89.7013 83.5297 89.6568 83.5316C89.6287 83.5328 89.6023 83.5342 89.5766 83.5355C89.5112 83.5389 89.4506 83.542 89.3777 83.542C88.8281 83.542 87.9301 83.4792 87.0546 83.153C86.1863 82.8294 85.3675 82.2587 84.9015 81.2511Z" fill="white" stroke="white"/> <path d="M93.138 67.6949C92.8946 67.4313 92.7903 67.0859 92.8321 66.7298C92.916 66.0312 93.1143 64.9788 93.4319 63.5927L93.432 63.5924C93.6733 62.5367 93.6525 61.5747 93.1808 60.9042C92.7473 60.2759 91.9988 60.0394 91.5288 59.9219L91.033 59.798L90.92 60.2965L89.8094 65.1945L89.7485 65.2857C88.9286 66.4429 87.9817 67.9218 87.242 69.1112C86.8709 69.7079 86.5505 70.2339 86.3227 70.613C86.2088 70.8025 86.1176 70.956 86.0545 71.0637C86.0231 71.1173 85.9978 71.1611 85.9799 71.1928C85.9712 71.2082 85.9625 71.2237 85.9554 71.2371C85.9547 71.2384 85.9539 71.2398 85.9531 71.2415C85.7691 71.523 85.4152 71.6016 85.1433 71.4354L84.8826 71.862L85.1433 71.4354C84.8478 71.2548 84.7627 70.8921 84.9322 70.6147L84.9343 70.6113L84.941 70.6002C85.0956 70.3422 87.0737 67.0427 88.6578 64.7514L88.7128 64.6719L88.7342 64.5776L89.8648 59.5913C90.009 58.9763 90.583 58.5799 91.212 58.6425C92.007 58.7248 93.3633 59.0487 94.1933 60.1792C94.8354 61.0694 95.0178 62.27 94.6611 63.8338L94.6608 63.8353C94.3978 65.0039 94.251 65.7961 94.1624 66.3278L94.0653 66.91H94.6556H100.108C101.503 66.91 102.663 68.013 102.711 69.3569C102.735 70.0205 102.476 70.676 102.007 71.1983C101.49 71.7109 100.865 71.971 100.166 71.971C99.8327 71.971 99.5636 71.7019 99.5636 71.369C99.5636 71.0362 99.8327 70.767 100.166 70.767C100.531 70.767 100.881 70.6251 101.13 70.3261C101.337 70.0775 101.478 69.7644 101.478 69.397C101.478 68.6117 100.738 68.114 100.079 68.114H94.1046C93.7454 68.114 93.3875 67.9652 93.138 67.6949Z" fill="white" stroke="white"/> <path d="M98.5708 111.795C99.2275 111.795 99.7598 111.263 99.7598 110.606C99.7598 109.949 99.2275 109.417 98.5708 109.417C97.9142 109.417 97.3818 109.949 97.3818 110.606C97.3818 111.263 97.9142 111.795 98.5708 111.795Z" fill="currentColor"/> <path d="M123.482 84.825C124.107 84.825 124.613 84.3187 124.613 83.694C124.613 83.0694 124.107 82.563 123.482 82.563C122.857 82.563 122.351 83.0694 122.351 83.694C122.351 84.3187 122.857 84.825 123.482 84.825Z" fill="currentColor"/> <path d="M95.7869 108.315L99.0059 109.504L98.1649 111.708L94.5979 110.229L95.7869 108.315Z" fill="currentColor"/> <path d="M124.149 130.384C113.332 130.384 104.545 121.597 104.545 110.78C104.545 99.963 113.332 91.176 124.149 91.176C134.966 91.176 143.753 99.963 143.753 110.78C143.753 121.597 134.937 130.384 124.149 130.384ZM124.149 93.409C114.55 93.409 106.749 101.21 106.749 110.809C106.749 120.408 114.55 128.209 124.149 128.209C133.748 128.209 141.549 120.408 141.549 110.809C141.549 101.21 133.719 93.409 124.149 93.409Z" fill="currentColor"/> <path d="M116.029 120.002C115.739 120.002 115.478 119.886 115.246 119.683C114.811 119.248 114.811 118.552 115.246 118.117L131.457 101.906C131.892 101.471 132.588 101.471 133.023 101.906C133.458 102.341 133.458 103.037 133.023 103.472L116.812 119.683C116.58 119.915 116.319 120.002 116.029 120.002Z" fill="currentColor"/> <path d="M132.24 120.002C131.95 120.002 131.689 119.886 131.457 119.683L115.246 103.472C114.811 103.037 114.811 102.341 115.246 101.906C115.681 101.471 116.377 101.471 116.812 101.906L133.023 118.117C133.458 118.552 133.458 119.248 133.023 119.683C132.82 119.915 132.53 120.002 132.24 120.002Z" fill="currentColor"/> </g> <defs> <filter id="filter0_d" x="-4" y="0" width="182" height="182" filterUnits="userSpaceOnUse" color-interpolation-filters="sRGB"> <feFlood flood-opacity="0" result="BackgroundImageFix"/> <feColorMatrix in="SourceAlpha" type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0"/> <feOffset dy="4"/> <feGaussianBlur stdDeviation="2"/> <feColorMatrix type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.25 0"/> <feBlend mode="normal" in2="BackgroundImageFix" result="effect1_dropShadow"/> <feBlend mode="normal" in="SourceGraphic" in2="effect1_dropShadow" result="shape"/> </filter> </defs> </svg>
    </Context>
    """
  end
end
