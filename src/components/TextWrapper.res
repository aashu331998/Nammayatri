open ReactNative
open Style

type textType =
  | HeadingBold
  | Subheading
  | SubheadingBold
  | ModalText
  | ModalTextBold
  | CardText
  | TextActive
  | CustomCssText(ReactNative.Style.t)

@react.component
let make = (~text=?, ~textType: textType, ~children: option<React.element>=?) => {
  let {
    textPrimary,
    textSecondary,
    textSecondaryBold,
    component,
  } = ThemebasedStyle.useThemeBasedStyle()

  let renderStyle = switch textType {
  | HeadingBold =>
    array([
      textSecondaryBold,
      textStyle(~fontSize=17., ~fontWeight=#800, ~letterSpacing=0.3, ~textAlign=#center, ()),
    ])
  | Subheading => array([textSecondaryBold, textStyle(~fontSize=15., ~textAlign=#center, ())])
  | SubheadingBold => array([textSecondaryBold, textStyle(~fontSize=15., ~fontWeight=#500, ())])
  | CardText => array([textStyle(~fontSize=15., ~fontWeight=#400, ~color=component.color, ())])
  | ModalText => array([textStyle(~fontSize=14., ~letterSpacing=0.5, ()), textSecondary])
  | ModalTextBold => array([textStyle(~fontSize=14., ()), textSecondary])
  | CustomCssText(styling) => array([styling])
  | TextActive => array([textStyle(~fontSize=14., ~fontWeight=#500, ()), textPrimary])
  }
  // let textTypeString = switch textType {
  // | HeadingBold => "SmallHeadingBold"
  // | Subheading => "Subheading"
  // | SubheadingBold => "SubheadingBold"
  // | ModalText => "ModalText"
  // | ModalTextBold => "ModalTextBold"
  // | CustomCssText(_) => "CustomCssText"
  // | CardText => "CardText"
  // | TextActive => "TextActive"
  // }
  <Text style={array([textStyle(), renderStyle])}>
    {switch text {
    | Some(text) => React.string(text)
    | None => React.null
    }}
    {switch children {
    | Some(children) => children
    | None => React.null
    }}
  </Text>
}
