defmodule Moon.Assets.Crests.CrestArsenal do
  use Moon.StatelessComponent

  false

  property color, :string
  property height, :string
  property width, :string
  property font_size, :string
  property vertical_align, :string

  def render(assigns) do
    false

    class_name =
      get_class_name(
        "Crests-CrestArsenal-#{assigns[:color]}-#{assigns[:height]}-#{assigns[:width]}-#{
          assigns[:font_size]
        }-#{assigns[:vertical_align]}"
      )

    ~H"""
    <style>
      .{{ class_name }} {
        vertical-align: middle;

        

        
        color: {{ @color }};
        height: {{ @height }};
        width: {{ @width }};
        font-size: {{ @font_size }};
        vertical-align: {{ @vertical_align }};
        overflow: hidden;
        
      }
    </style>

    <svg class={{ class_name }} xmlns="http://www.w3.org/2000/svg" width="auto" height="1em" viewBox="0 0 322.793 379.84"><path fill="#9C824A" stroke="#9C824A" stroke-width=".793" stroke-miterlimit="282" d="M161.396.396C122.96.396 52.087 10.34 15.994 31.328c-47.52 168.475 17.107 283.042 145.402 348.068 128.296-65.026 192.923-180.16 145.402-348.067C270.669 10.34 199.831.396 161.396.396h0z"/><path fill="#023474" stroke="#023474" stroke-width=".793" stroke-miterlimit="282" d="M161.396 11.228c-37.761 0-80.278 4.83-135.962 27.558-41.452 147.061 6.637 264.931 135.962 329.174 129.325-64.243 177.378-182.114 135.926-329.174-55.684-22.728-98.165-27.558-135.926-27.558h0z"/><path fill="#FFF" stroke="#FFF" stroke-width=".793" stroke-miterlimit="282" d="M161.219 11.086c-37.584 0-77.936 5.575-114.349 19.355-37.761 150.577-9.901 260.526 114.562 337.413l-.213-356.768h0zm.213 356.768c124.462-76.887 152.287-186.836 114.525-337.413-36.412-13.78-76.729-19.355-114.312-19.355l-.213 356.768h0z"/><path fill="#EF0107" stroke="#EF0107" stroke-width=".793" stroke-miterlimit="282" d="M161.432 11.051c-37.797 0-76.055 5.717-107.144 16.548-39.11 157.822-7.702 264.397 107.179 337.235l-.035-353.783h0z"/><path fill="#DB0007" stroke="#DB0007" stroke-width=".793" stroke-miterlimit="282" d="M161.503 11.051c37.796 0 76.055 5.717 107.179 16.548 39.11 157.822 7.701 264.397-107.214 337.235l.035-353.783h0z"/><path fill="#FFF" d="M112.598 249.203c-16.68 11.437-29.953 15.556-45.356 19.64l-9.298-14.454c14.161-7.173 28.818-17.153 43.582-31.606 1.242 14.026 7.771 23.969 11.072 26.42z"/><path fill="#9C824A" d="M110.326 248.6c-15.828 10.866-37.868 18.431-63.101 22.124l-5.146-7.812c21.613-8.099 42.481-20.172 58.665-37.147 2.449 10.866 6.175 18.076 9.582 22.835z"/><path fill="#FFF" d="M68.165 182.225c0 6.073-4.897 10.974-10.966 10.974s-11.002-4.901-11.002-10.974 4.933-10.973 11.002-10.973 10.966 4.9 10.966 10.973z"/><path fill="#FFF" d="M66.993 160.597v41.409h32.615c2.129-13.886 10.008-28.624 27.859-41.409H66.993"/><path fill="#FFF" d="M68.307 202.006c-7.276.106-13.273-9.021-13.38-20.456-.071-11.436 5.75-20.811 13.061-20.953h.249"/><path fill="#9C824A" d="M63.551 182.225c0 4.688-3.407 8.453-7.595 8.453s-7.595-3.764-7.595-8.453c0-4.688 3.407-8.452 7.595-8.452 4.188-.001 7.595 3.764 7.595 8.452zM67.881 162.764v37.217h32.367c2.555-12.358 8.837-25.498 24.523-37.217h-56.89"/><path fill="#9C824A" d="M69.087 199.981c-6.85.143-12.457-8.096-12.563-18.36-.071-10.263 5.43-18.716 12.279-18.857h.213"/><path fill="#FFF" d="M223.325 211.701c0 34.556-27.965 62.539-62.497 62.539-34.496 0-62.497-27.983-62.497-62.539 0-34.554 28.001-62.539 62.497-62.539 34.532 0 62.497 27.985 62.497 62.539z"/><path fill="#9C824A" d="M220.062 211.701c0 32.744-26.512 59.271-59.233 59.271-32.686 0-59.197-26.527-59.197-59.271 0-32.707 26.511-59.271 59.197-59.271 32.721-.001 59.233 26.528 59.233 59.271z"/><path fill="#FFF" d="M210.23 211.701c0 27.31-22.111 49.436-49.402 49.436-27.256 0-49.366-22.126-49.366-49.436s22.11-49.435 49.366-49.435c27.291 0 49.402 22.125 49.402 49.435z"/><path fill="#9C824A" d="M206.966 211.701c0 25.498-20.656 46.132-46.138 46.132-25.446 0-46.101-20.634-46.101-46.132 0-25.498 20.655-46.131 46.101-46.131 25.482-.001 46.138 20.633 46.138 46.131z"/><path fill="#FFF" d="M180.063 211.701c.036 10.619-8.588 19.249-19.2 19.284-10.646 0-19.271-8.629-19.271-19.248v-.036c0-10.619 8.589-19.248 19.235-19.248 10.611-.035 19.235 8.595 19.235 19.213l.001.035z"/><path fill="#9C824A" d="M177.793 211.701c0 9.377-7.561 16.976-16.929 16.976-9.369 0-16.964-7.563-17-16.939v-.036c0-9.375 7.595-16.976 16.964-16.976s16.965 7.565 16.965 16.94v.035z"/><path fill="#FFF" d="M169.559 211.701c0 4.794-3.904 8.7-8.73 8.735-4.791 0-8.695-3.905-8.695-8.735 0-4.829 3.904-8.7 8.695-8.735a8.727 8.727 0 018.73 8.735z"/><path fill="#9C824A" d="M167.146 211.701a6.31 6.31 0 01-6.317 6.321 6.31 6.31 0 01-6.317-6.321c0-3.479 2.839-6.32 6.317-6.32a6.309 6.309 0 016.317 6.32z"/><path fill="#FFF" d="M154.192 164.504h13.131v30.647h-13.131z"/><path fill="#9C824A" d="M156.25 160.1h9.049v38.958h-9.049z"/><path fill="#FFF" d="M197.418 181.798l7.169 11.009-25.694 16.693-7.133-11.01z"/><path fill="#9C824A" d="M202.21 181.124l4.933 7.6-32.651 21.237-4.933-7.635z"/><path fill="#FFF" d="M142.409 214.187l7.027 11.08-25.872 16.408-7.027-11.116z"/><path fill="#9C824A" d="M146.81 213.548l4.862 7.671-32.863 20.846-4.863-7.671z"/><path fill="#FFF" d="M154.192 229.281h13.131v30.646h-13.131z"/><path fill="#9C824A" d="M156.25 224.913h9.049v38.922h-9.049z"/><path fill="#EF0107" stroke="#EF0107" stroke-width=".311" stroke-miterlimit="282" d="M148.017 226.013c1.775 1.491 3.726 2.841 6.175 3.871l-.071 27.345c-12.386-1.598-21.755-7.706-28.853-16.406l22.785-14.81"/><path fill="#DB0007" stroke="#DB0007" stroke-width=".311" stroke-miterlimit="282" d="M173.604 226.12c-1.81 1.456-3.727 2.841-6.175 3.835l.035 27.346c12.386-1.598 21.756-7.706 28.854-16.407l-22.749-14.773"/><path fill="#DB0007" d="M179.815 214.649l27.114-3.268c.213 6.782-1.42 12.749-3.727 18.467l-23.459-15.199"/><path fill="#FFF" stroke="#FFF" stroke-width=".311" stroke-miterlimit="282" d="M179.851 214.542c.106-.426.071-.816.249-2.059l26.76-3.48c.106 1.243.035 1.704 0 2.272l-27.009 3.267h0z"/><path fill="#FFF" d="M219.458 191.992h35.1c-1.101 4.154-2.166 8.38-7.206 10.263-8.056 3.02-24.771 5.931-24.771 5.931-.32-4.582-1.349-10.798-3.123-16.194z"/><path fill="#FFF" d="M195.006 159.994l91.705.106-3.229 33.524-62.64 3.268c-3.372-14.987-14.765-29.298-25.836-36.898z"/><path fill="#9C824A" d="M198.27 162.373l117.081.106-4.472 27.311-90.854 4.475c-3.585-13.567-11.782-23.475-21.755-31.892z"/><path fill="#9C824A" d="M219.458 191.992h32.33c-1.064 3.692-1.81 7.066-6.565 8.735-7.559 2.699-22.784 4.83-22.784 4.83-.639-4.438-1.562-8.949-2.981-13.565zM183.968 111.305c0 1.492-.319 5.576-.496 6.712h18.171c-1.102-4.831-1.599-11.542-1.74-16.727 0 .355-.319-10.406-.319-10.406 0-.746.319-1.882.78-2.237.64-.746 1.279-.746 2.06-.746.78-.355 2.2-.355 2.377 2.593l.462 11.151c.177 5.22.177 12.288-.462 16.372h17.497c-.143-1.492-.639-5.221-.781-6.322 2.2 4.83 6.956 7.422 13.273 7.422 3.762 0 6.636-1.457 8.837-2.948 0 .355.923 1.848.923 1.848h32.509c-1.42-4.831-2.343-11.542-2.839-16.727l-4.579-36.437-16.716-2.983c1.421 4.83 2.379 11.897 2.981 16.727l2.555 23.439c.462 4.084.782 8.559.782 13.388v.355l-.64-1.492c-1.277-2.983-1.881-6.676-2.378-12.252l-.603-7.458c-.958-11.897-7.417-17.083-21.649-17.083-2.342 0-8.34.355-11.995 1.492l.958 13.353 3.798-2.202c3.159-1.882 5.501-2.628 8.339-2.628 2.237 0 3.656.747 4.295 2.238-2.696.39-5.679 1.136-9.014 2.592-5.04 2.237-8.199 5.61-9.618 9.304v-.355L220.239 89c-.283-7.813-5.358-12.998-13.096-12.998-3.442 0-6.602 1.101-9.44 2.983-.177-.391-.319-.747-.497-1.137l-.639-1.492-14.516-.746c.639 2.628 1.598 10.051 1.74 12.644-.782-3.694-2.84-7.778-6.638-10.761-2.98-1.882-6.778-2.983-10.717-2.983-5.36 0-10.896 2.237-14.516 5.966-3.797 3.693-5.679 8.914-5.856 14.845-1.419-1.492-3.3-2.948-5.501-3.693l-6.637-3.374h-.319c-1.561-.747-1.739-1.102-1.739-1.457.178-.746 1.739-1.492 3.798-1.492 2.839 0 6.779 1.492 9.937 3.339l.319-11.897c-2.378-1.137-5.678-1.847-10.434-1.847-2.52 0-7.24.355-11.357 2.592a43.082 43.082 0 00-2.981 2.238l.142-3.375c-3.797-.71-7.879-.71-12.919 4.12-.177-.391-.497-2.238-.816-2.983l-15.615.746c1.1 4.44 1.277 10.761.958 16.337l-.319 5.966v.746c-.178 2.983-.319 6.321-.639 9.304-1.278-4.12-2.662-9.695-3.798-14.134l-7.736-34.945-22.075 3.338c.142.355.461 1.492.639 2.592.143 1.492.143 4.475-1.916 10.796-3.62 10.016-8.66 25.286-13.557 36.046-.639 1.492-1.916 3.729-1.916 3.729h17.212c.32-2.593 1.42-7.067 2.52-10.406 2.378 0 8.518 0 11.356-.391.639 2.628 1.278 5.966 1.456 8.203l.284 2.593h34.425c-.781-5.576-.462-12.999-.177-17.118.319-4.83 1.277-8.168 3.336-10.015 1.561-1.882 3.3-2.237 4.578-2.237-.177 6.676 4.082 9.66 7.879 11.506l6.778 3.373c2.378 1.492 2.378 1.847 2.378 2.593-.142 1.101-2.059 1.492-3.797 1.492-3.62 0-8.518-2.238-13.877-8.168l-.319 15.59c4.259 2.237 9.618 3.338 14.374 3.338 7.879 0 16.254-3.694 18.455-10.761 3.939 7.422 11.676 10.761 19.271 10.761 6.777.006 11.816-2.197 16.253-7.061zM65.432 96.069c.958-2.592 1.738-4.83 3.158-8.914.958 4.084 1.419 6.677 1.881 8.559-1.881.355-2.839.355-5.039.355zm96.603-4.084c0-5.185 1.881-7.422 3.763-7.422.639 0 2.058-.391 2.696 2.237.319 1.101.461 1.847.461 2.202 0 1.492-.78 1.882-1.738 1.882v.355s-2.662.746-5.182 1.882v-1.136zm17.993 10.796c-3.337 2.948-5.714 4.83-9.653 4.83-3.158-.391-5.04-2.238-6.14-4.83 3.301-1.136 16.077-5.966 19.732-7.458 0 2.983.143 6.321.143 6.321v6.322l-4.082-5.185zm58.842 5.186c-2.98 0-3.62-2.238-3.762-3.694.142-1.492.603-3.729 5.358-5.22a93.08 93.08 0 00.319 3.338v1.491c.143 1.136.143 2.237.284 3.338-.602.391-1.382.391-2.199.747"/><path fill="#FFF" d="M143.225 78.597c-1.561-.355-3.939-1.101-7.736-1.101-2.981 0-6.921.746-9.938 2.238-3.478 2.237-5.998 5.185-6.14 8.559-.319 5.185 2.378 7.422 6.317 9.269 2.662 1.492 5.217 2.983 6.779 3.729 2.058 1.101 3.939 2.237 3.797 4.83-.177 2.593-2.555 4.475-6.494 4.475-3.301 0-8.021-2.237-11.357-5.221l-.142 7.813c2.839 1.492 7.417 2.237 11.676 2.237 7.24 0 16.254-3.338 16.396-11.542.177-6.321-4.258-8.559-6.92-10.015-2.697-1.136-5.395-2.627-6.636-2.983-1.278-.746-3.798-1.491-3.62-4.475.284-2.592 3.301-3.729 6.459-3.729 2.662 0 5.359.746 7.417 1.882M78.385 64.853L61.634 67.09c.32 2.238-.319 6.677-2.058 11.897-3.442 10.015-9.121 26.741-13.558 36.436h10.435c.603-3.373 1.384-6.321 2.981-10.405l15.474-.391c.603 2.983 1.739 7.813 1.881 10.796h14.054c-1.739-4.119-3.939-12.643-5.358-18.609l-7.1-31.961zM61.634 98.662l7.595-21.912 4.579 21.557M118.454 78.597l-.319 7.458c-2.52-.39-5.678.355-8.198 2.948-2.201 2.237-3.62 5.576-3.939 11.542-.32 4.83-.462 10.406-.178 14.88H94.001c.781-4.474 1.101-9.66 1.242-14.524l.319-5.931c.319-4.83.319-9.66-.461-14.134l10.434-.355c.462 1.492.781 4.084.604 6.676 4.578-7.069 9.014-8.56 12.315-8.56M267.298 67.09l-10.754-1.882c1.101 4.866 1.42 8.204 2.059 13.033l2.521 23.404c.496 4.83.958 9.305.815 13.779h11.677c-1.136-4.474-1.597-8.949-2.059-13.779M219.139 115.424c-.604-4.474-.924-8.949-1.102-13.779l-.461-12.252c-.319-6.712-4.116-10.405-10.434-10.405-3.442 0-7.56 1.101-11.037 5.575-.142-1.136-.639-4.084-1.277-5.575l-9.44-.391c.78 4.475 1.1 8.914 1.241 13.744l.178 9.304c.142 4.83 0 9.305-.319 13.779h11.818c-.604-4.474-.923-8.949-1.101-13.779l-.319-10.405c-.142-3.729 2.697-6.322 5.537-6.322 3.3 0 4.897 2.237 5.04 5.576l.496 11.151c.143 4.83.143 9.305-.177 13.779M256.083 115.424c-1.419-3.729-2.2-8.203-2.52-13.033l-.64-7.423c-.639-8.914-4.399-14.88-18.951-14.88-2.52 0-6.14.391-9.12 1.101l.461 6.712c2.98-1.847 5.998-3.338 9.795-3.338 3.939 0 7.24 1.847 7.56 7.422-3.798.391-7.276 1.101-11.215 2.983-4.4 1.847-8.979 5.576-8.518 11.506.461 6.712 5.536 9.695 11.854 9.695 4.897 0 8.198-2.237 10.079-4.474.319 1.491.816 2.592 1.277 3.729h9.938zm-17.213-4.83c-3.479 0-6.316-1.882-6.459-5.966 0-4.084 2.52-7.422 10.576-8.559l.462 6.322c.177 2.237.177 3.729.496 5.576-1.134 1.491-3.016 2.237-5.075 2.627M175.592 79.733c-2.696-1.882-5.855-2.628-9.155-2.628-7.737 0-17.994 5.576-17.675 19.71.142 14.49 11.215 18.964 18.952 18.964 6.778 0 10.896-2.593 14.195-5.931l-2.378-3.374c-1.738 1.492-4.578 3.729-9.156 3.729-4.898-.355-8.021-3.729-9.76-8.914l21.436-7.813c-.639-7.066-3.158-11.15-6.459-13.743zm-7.417 13.744l-8.518 3.338c-.177-1.491-.319-2.983-.319-4.83 0-8.559 4.72-10.05 6.316-10.05 2.521-.355 4.721 1.136 5.536 4.119.924 3.339.605 6.322-3.015 7.423M117.673 190.287l7.204-10.974 25.624 16.762-7.205 11.009z"/><path fill="#9C824A" d="M115.295 186.522l4.969-7.6 32.544 21.343-4.969 7.601z"/><path fill="#FFF" d="M172.363 225.232l7.204-11.01 25.623 16.798-7.204 11.01z"/><path fill="#9C824A" d="M169.984 221.467l4.969-7.599 32.545 21.343-4.969 7.565z"/></svg>
    """
  end
end
