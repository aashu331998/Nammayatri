module SvgXml = {
  @module("react-native-svg") @react.component
  external make: (
    ~xml: string,
    ~width: string,
    ~height: string,
    ~fill: string,
    ~onError: unit => unit,
    ~onLoad: unit => unit,
  ) => React.element = "SvgXml"
}
