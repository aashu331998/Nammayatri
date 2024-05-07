type renderItem = {index: int}
module Carousel = {
  @module("react-native-reanimated-carousel") @react.component
  external make: (
    ~loop: bool,
    ~width: float,
    ~height: float,
    ~autoPlay: bool,
    ~data: array<'item>,
    ~scrollAnimationDuration: int,
    ~onSnapToItem: int => unit,
    ~renderItem: renderItem => React.element,
  ) => React.element = "default"
}
