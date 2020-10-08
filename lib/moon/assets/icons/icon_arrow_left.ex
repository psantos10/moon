defmodule Moon.Assets.Icons.IconArrowLeft do
  use Moon.StatelessComponent

  property color, :string
  property background_color, :string

  false

  def render(assigns) do
    class_name =
      get_class_name("Icons-IconArrowLeft-#{assigns[:color]}-#{assigns[:background_color]}")

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

    <svg class={{ class_name }} width="1em" height="auto" viewBox="0 0 20 8" version="1.1" xmlns="http://www.w3.org/2000/svg" >   <!-- Generator: Sketch 53 (72520) - https://sketchapp.com -->   <title>icon-arrow-left</title>   <desc>Created with Sketch.</desc>   <g id="Icons" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">     <g id="Arrow-Left" transform="translate(0.000000, -6.000000)" fill="currentColor">       <polygon id="icon-arrow-left" transform="translate(10.000000, 10.000000) rotate(180.000000) translate(-10.000000, -10.000000) " points="14.9206657 6 14.9206657 9.2 0 9.2 0 10.8 14.9206657 10.8 14.9206657 14 20 10"></polygon>     </g>   </g> </svg>
    """
  end
end
