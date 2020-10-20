defmodule Moon.Assets.Icons.IconSettings do
  use Moon.StatelessComponent
  use Moon.Components.Context

  prop(color, :string)
  prop(background_color, :string)
  prop(font_size, :string)

  def render(assigns) do
    class_name =
      get_class_name(
        "Icons-IconSettings-#{assigns.color}-#{assigns.background_color}-#{assigns.font_size}"
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

    <svg class={{ class_name }} width="1em" height="1em"  viewBox="0 0 20 20" version="1.1" xmlns="http://www.w3.org/2000/svg" >   <!-- Generator: Sketch 53 (72520) - https://sketchapp.com -->   <title>icon-settings</title>   <desc>Created with Sketch.</desc>   <g id="Icons" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">     <g id="Settings" fill="currentColor">       <path d="M7.39897102,17.5999648 C7.07943069,17.4906191 6.76692611,17.3616323 6.46497516,17.2132974 L4.49818976,17.9573171 C4.19682512,18.0713532 3.85617754,17.9983583 3.62839512,17.769993 L2.23003972,16.3716581 C2.00167099,16.143879 1.92838192,15.8032364 2.04271287,15.5018762 L2.78645032,13.5351196 C2.6384064,13.2331731 2.50941765,12.9206731 2.40007036,12.6011374 L0.482828372,11.7363391 C0.189085792,11.6035413 0,11.3109756 0,10.9888016 L0,9.01119841 C0,8.68873124 0.189085792,8.39616557 0.483121528,8.26366088 L2.40007036,7.39886257 C2.50941765,7.07932692 2.6384064,6.76682692 2.78645032,6.46488039 L2.04271287,4.49812383 C1.92838192,4.1967636 2.00167099,3.85612101 2.23003972,3.62834193 L3.62839512,2.23000704 C3.85617754,2.00164165 4.19623881,1.92893996 4.49818976,2.04268293 L6.464682,2.78640947 C6.7663398,2.63836773 7.07884438,2.50938086 7.39897102,2.40003518 L8.26378201,0.482821295 C8.3965818,0.189083021 8.6888586,0 9.01133049,0 L10.9889627,0 C11.3111414,0 11.6037114,0.189083021 11.736218,0.482821295 L12.6013221,2.40003518 C12.9211556,2.50938086 13.2336602,2.63836773 13.5356112,2.78640947 L15.5021034,2.04268293 C15.8043475,1.92893996 16.1441156,2.00164165 16.371898,2.23000704 L17.7705466,3.62834193 C17.998329,3.85612101 18.0716181,4.1967636 17.9575803,4.49812383 L17.2135497,6.46488039 C17.3618868,6.76653377 17.4908755,7.07932692 17.6002228,7.39886257 L19.5171716,8.26366088 C19.8109142,8.39587242 20,8.68843809 20,9.01119841 L20,10.9888016 C20,11.3109756 19.8109142,11.6035413 19.5171716,11.7363391 L17.6002228,12.6011374 C17.4908755,12.9206731 17.3618868,13.2331731 17.2135497,13.5351196 L17.9575803,15.5018762 C18.0716181,15.8032364 17.998329,16.143879 17.7705466,16.3716581 L16.371898,17.769993 C16.1441156,17.9983583 15.8037612,18.0713532 15.5021034,17.9573171 L13.535318,17.2132974 C13.233367,17.3616323 12.9211556,17.4906191 12.6013221,17.5999648 L11.736218,19.5168856 C11.6037114,19.8106238 11.3111414,20 10.9889627,20 L9.01133049,20 C8.6888586,20 8.3965818,19.8106238 8.26378201,19.5168856 L7.39897102,17.5999648 Z M10.0000293,7.91346154 C8.84939097,7.91346154 7.91363616,8.84920263 7.91363616,9.99982411 C7.91363616,11.1504456 8.84939097,12.0861867 10.0000293,12.0861867 C11.1506677,12.0861867 12.0864225,11.1504456 12.0864225,9.99982411 C12.0864225,8.84920263 11.1506677,7.91346154 10.0000293,7.91346154 Z M4.4134676,16.2362219 L6.22751858,15.5499531 C6.45236944,15.464939 6.70389751,15.4828213 6.91409056,15.5989095 C7.32626827,15.8269817 7.76658898,16.0090291 8.22274013,16.1403612 C8.45404043,16.2069067 8.64429884,16.3719512 8.74309251,16.5912289 L9.54106386,18.3598147 L10.4592293,18.3598147 L11.2572007,16.5912289 C11.3562875,16.3719512 11.5462527,16.2069067 11.777553,16.1403612 C12.2339973,16.0090291 12.674318,15.8269817 13.0859094,15.5989095 C13.2963956,15.4828213 13.5479237,15.464939 13.7727746,15.5499531 L15.5868256,16.2362219 L16.2364598,15.5865971 L15.5498879,13.7725727 C15.4648726,13.547432 15.4830482,13.2964939 15.5991381,13.0857176 C15.8272137,12.6738391 16.0092637,12.2335249 16.1408909,11.7770872 C16.2074374,11.5460835 16.3721912,11.356121 16.5914721,11.2570356 L18.3600838,10.459076 L18.3600838,9.54063086 L16.5914721,8.7426712 C16.3721912,8.64417214 16.2074374,8.45391651 16.1405977,8.22261961 C16.0092637,7.76618199 15.8272137,7.32586773 15.5991381,6.91398921 C15.4830482,6.7035061 15.4648726,6.45256801 15.5498879,6.2274273 L16.2364598,4.41310976 L15.5865324,3.76377814 L13.7727746,4.44975375 C13.5479237,4.53506098 13.2963956,4.51688555 13.0859094,4.40050422 C12.6749044,4.1736046 12.2345836,3.99097092 11.7769667,3.85905253 C11.5462527,3.79250704 11.3562875,3.62775563 11.2572007,3.40877111 L10.4592293,1.64018527 L9.54106386,1.64018527 L8.74309251,3.40877111 C8.64429884,3.62775563 8.45404043,3.79250704 8.22303329,3.85905253 C7.76570951,3.99097092 7.32568195,4.1736046 6.91409056,4.40050422 C6.70389751,4.51688555 6.45295575,4.53506098 6.22751858,4.44975375 L4.4134676,3.76377814 L3.76383331,4.41340291 L4.44981898,6.2274273 C4.53512745,6.45256801 4.51724492,6.70321295 4.40086188,6.91398921 C4.17337262,7.32586773 3.99132257,7.76618199 3.8591091,8.22291276 C3.79256263,8.45391651 3.6278088,8.64417214 3.40852792,8.7426712 L1.64020931,9.54063086 L1.64020931,10.459076 L3.40882107,11.2570356 C3.6278088,11.356121 3.79256263,11.5457903 3.8591091,11.7767941 C3.99132257,12.2335249 4.17337262,12.6741323 4.40086188,13.0863039 C4.51724492,13.2967871 4.53512745,13.547432 4.44981898,13.7725727 L3.76383331,15.5863039 L4.4134676,16.2362219 Z M10.0000293,13.726372 C7.94529704,13.726372 6.27372001,12.0545263 6.27372001,9.99982411 C6.27372001,7.94512195 7.94529704,6.27356942 10.0000293,6.27356942 C12.0547616,6.27356942 13.7266318,7.94512195 13.7266318,9.99982411 C13.7266318,12.0545263 12.0547616,13.726372 10.0000293,13.726372 Z" id="icon-settings"></path>     </g>   </g> </svg>
    </Context>
    """
  end
end
