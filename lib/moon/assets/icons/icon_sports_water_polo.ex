defmodule Moon.Assets.Icons.IconSportsWaterPolo do
  use Moon.StatelessComponent

  property color, :string
  property background_color, :string

  def render(assigns) do
    class_name =
      get_class_name("Icons-IconSportsWaterPolo-#{assigns[:color]}-#{assigns[:background_color]}")

    ~H"""
    <style>
      .{{ class_name }} {
        vertical-align: middle;
        color: {{ @color }};
        background-color: {{ @background_color }};
      }
    </style>

    <svg class={{ class_name }} width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">  <path d="M12.5542 11.2773C13.6636 11.2773 14.5542 10.3867 14.5542 9.27734C14.5542 8.16797 13.6636 7.27734 12.5542 7.27734C11.4448 7.27734 10.5542 8.16797 10.5542 9.27734C10.4448 10.3906 11.3315 11.2773 12.5542 11.2773ZM7.77686 13.0547C7.77686 13.0547 6.22217 15.6094 5.44482 16.7227C5.99951 16.6133 6.44482 16.3906 6.89014 15.9453C7.55811 15.3906 8.33545 14.7227 9.66748 14.7227C11.1128 14.7227 11.8901 15.3906 12.4448 15.9453C12.9995 16.3906 13.4448 16.7227 14.2222 16.7227C14.8901 16.7227 15.3315 16.5 15.6675 16.168L13.7769 14.168L13.3315 13.7227L5.5542 8.27734V3.77734C5.69873 3.81641 5.84717 3.83594 5.99951 3.83594C7.11279 3.83594 7.89014 2.94531 7.89014 1.94531C7.89014 0.945312 6.99951 0.0585938 5.99951 0.0585938C4.99951 0.0585938 4.10889 0.945312 4.10889 1.94531C4.10889 1.99609 4.11279 2.04688 4.1167 2.09766C3.84717 2.29297 3.66748 2.61719 3.66748 2.94531V9.27734L8.22217 12.3867L7.77686 13.0547ZM19.1089 16.5C17.6636 16.5 16.8862 17.168 16.3315 17.6094C15.7769 18.0547 15.4409 18.3867 14.5542 18.3867C13.7769 18.3867 13.3315 18.0547 12.7769 17.6094C12.1089 17.0547 11.3315 16.3867 9.99951 16.3867C8.5542 16.3867 7.77686 17.0547 7.22217 17.6094C6.66748 18.0547 6.22217 18.3867 5.44482 18.3867C4.66748 18.3867 4.22217 18.0547 3.66748 17.6094C2.99951 17.0547 2.33545 16.5 0.890137 16.5C0.444824 16.5 0.112793 16.832 0.112793 17.2773C0.112793 17.7227 0.444824 18.0547 0.890137 18.0547C1.78076 18.0547 2.22217 18.3867 2.78076 18.832C3.33545 19.2773 4.11279 19.9414 5.44873 19.9414C6.78467 19.9414 7.55811 19.2734 8.22607 18.7188C8.55811 18.2734 9.00342 17.8281 9.89404 17.8281C10.7847 17.8281 11.2261 18.1602 11.7847 18.7188C12.4526 19.2734 13.1167 19.9414 14.562 19.9414C15.894 19.9414 16.6714 19.2734 17.23 18.832C17.7847 18.3867 18.23 18.0547 19.1206 18.0547C19.5659 18.0547 19.8979 17.7227 19.8979 17.2773C19.7769 16.832 19.4448 16.5 19.1089 16.5Z" fill="currentColor"/> </svg>
    """
  end
end
