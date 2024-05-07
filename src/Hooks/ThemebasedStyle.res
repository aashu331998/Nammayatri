open ReactNative
open Style

type statusColorConfig = {
  textColor: ReactNative.Color.t,
  backgroundColor: ReactNative.Color.t,
}

type buttonColorConfig = (string, string)
type componentConfig = {
  background: ReactNative.Color.t,
  borderColor: ReactNative.Color.t,
  dividerColor: ReactNative.Color.t,
  color: ReactNative.Color.t,
}
type statusColor = {
  green: statusColorConfig,
  orange: statusColorConfig,
  red: statusColorConfig,
  blue: statusColorConfig,
}

let getStrProp = (~overRideProp, ~defaultProp) => {
  let x = switch overRideProp {
  | Some(val) => val
  | None => defaultProp
  }
  x
}
let getStyleProp = (~override, ~fn, ~default) => {
  let x = switch override {
  | Some(val) => fn(val)
  | None => default
  }
  x
}

let status_color = {
  green: {textColor: "#36AF47", backgroundColor: "rgba(54, 175, 71, 0.12)"},
  orange: {textColor: "#CA8601", backgroundColor: "rgba(202, 134, 1, 0.12)"},
  red: {textColor: "#EF6969", backgroundColor: "rgba(239, 105, 105, 0.12)"},
  blue: {textColor: "#0099FF", backgroundColor: "rgba(0, 153, 255, 0.12)"},
}
let styles = {
  StyleSheet.create({
    "light_bgColor": viewStyle(~backgroundColor="#ffffff", ()),
    "dark_bgColor": viewStyle(~backgroundColor="#2e2e2e", ()),
    "flatMinimal_bgColor": viewStyle(~backgroundColor="rgba(107, 114, 128, 1)", ()),
    "minimal_bgColor": viewStyle(~backgroundColor="#ffffff", ()),
    "light_bgTransparentColor": viewStyle(
      ~backgroundColor=Color.rgba(~r=0, ~g=0, ~b=0, ~a=0.2),
      (),
    ),
    "dark_bgTransparentColor": viewStyle(~backgroundColor=Color.rgba(~r=0, ~g=0, ~b=0, ~a=0.2), ()),
    "flatMinimal_bgTransparentColor": viewStyle(
      ~backgroundColor=Color.rgba(~r=0, ~g=0, ~b=0, ~a=0.2),
      (),
    ),
    "minimal_bgTransparentColor": viewStyle(
      ~backgroundColor=Color.rgba(~r=0, ~g=0, ~b=0, ~a=0.2),
      (),
    ),
    "light_textPrimary": textStyle(~color="#0570de", ()),
    "dark_textPrimary": textStyle(~color="#FFFFFF", ()),
    "flatMinimal_textPrimary": textStyle(~color="#e0e0e0", ()),
    "minimal_textPrimary": textStyle(~color="black", ()),
    "light_textSecondary": textStyle(~color="hsla(0,0%, 10% , 0.5 )", ()),
    "dark_textSecondary": textStyle(~color="#F6F8F9", ()),
    "flatMinimal_textSeconadry": textStyle(~color="#F6F8FA", ()),
    "minimal_textSeconadry": textStyle(~color="blue", ()),
    "light_textSecondary_Bold": textStyle(~color="hsla(0,0%, 10% , 0.7 )", ()),
    "dark_textSecondaryBold": textStyle(~color="#F6F8F9", ()),
    "flatMinimal_textSeconadryBold": textStyle(~color="#F6F8FA", ()),
    "minimal_textSeconadryBold": textStyle(~color="blue", ()),
    "light_textInputBg": viewStyle(~backgroundColor="#ffffff", ()),
    "dark_textInputBg": viewStyle(~backgroundColor="#444444", ()),
    "flatMinimal_textInputBg": viewStyle(~backgroundColor="black", ()),
    "minimal_textInputBg": viewStyle(~backgroundColor="white", ()),
    "light_boxColor": viewStyle(~backgroundColor="#FFFFFF", ()),
    "dark_boxColor": viewStyle(~backgroundColor="#191A1A", ()),
    "flatMinimal_boxColor": viewStyle(~backgroundColor="#191A1A", ()),
    "minimal_boxColor": viewStyle(~backgroundColor="#191A1A", ()),
    "light_boxBorderColor": viewStyle(~borderColor="#e4e4e5", ()),
    "dark_boxBorderColor": viewStyle(~borderColor="#79787d", ()),
    "flatMinimal_boxBorderColor": viewStyle(~borderColor="#3541ff", ()),
    "minimal_boxBorderColor": viewStyle(~borderColor="#e4e4e5", ()),
  })
}

type themeBasedStyleObj = {
  platform: string,
  bgColor: ReactNative.Style.t,
  paymentSheetOverlay: string,
  loadingBgColor: string,
  loadingFgColor: string,
  bgTransparentColor: ReactNative.Style.t,
  textPrimary: ReactNative.Style.t,
  textSecondary: ReactNative.Style.t,
  textSecondaryBold: ReactNative.Style.t,
  placeholderColor: string,
  textInputBg: ReactNative.Style.t,
  iconColor: string,
  lineBorderColor: string,
  linkColor: ReactNative.Color.t,
  disableBgColor: ReactNative.Color.t,
  filterHeaderColor: ReactNative.Color.t,
  filterOptionTextColor: array<ReactNative.Color.t>,
  tooltipTextColor: ReactNative.Color.t,
  tooltipBackgroundColor: ReactNative.Color.t,
  boxColor: ReactNative.Style.t,
  boxBorderColor: ReactNative.Style.t,
  dropDownSelectAll: array<array<ReactNative.Color.t>>,
  fadedColor: array<ReactNative.Color.t>,
  status_color: statusColor,
  detailViewToolTipText: string,
  summarisedViewSingleStatHeading: string,
  switchThumbColor: string,
  shimmerColor: array<string>, //[background color, highlight color]
  lastOffset: string,
  dangerColor: string,
  orderDisableButton: string,
  toastColorConfig: statusColorConfig, // [backrgroundcolor, textColor]
  primaryColor: ReactNative.Color.t,
  borderRadius: float,
  borderWidth: float,
  buttonBorderRadius: float,
  buttonBorderWidth: float,
  component: componentConfig,
  paypalButonColor: buttonColorConfig,
  applePayButtonColor: buttonColorConfig,
  googlePayButtonColor: buttonColorConfig,
  payNowButtonColor: buttonColorConfig,
  payNowButtonTextColor: string,
  payNowButtonBorderColor: string,
  payNowButtonShadowColor: string,
  payNowButtonShadowIntensity: float,
  focusedTextInputBoderColor: string,
  errorTextInputColor: string,
  normalTextInputBoderColor: string,
  shadowColor: string,
  shadowIntensity: float,
}

let darkRecord = {
  platform: "android",
  paymentSheetOverlay: "#00000025",
  bgColor: styles["dark_bgColor"],
  loadingBgColor: "#3e3e3e90",
  loadingFgColor: "#2e2e2e",
  bgTransparentColor: styles["dark_bgTransparentColor"],
  textPrimary: styles["dark_textPrimary"],
  textSecondary: styles["dark_textSecondary"],
  textSecondaryBold: styles["dark_textSecondaryBold"],
  placeholderColor: "#F6F8F940",
  textInputBg: styles["dark_textInputBg"],
  iconColor: "rgba(246, 248, 249, 0.25)",
  lineBorderColor: "#2C2D2F",
  linkColor: "#0099FF",
  disableBgColor: "#202124",
  filterHeaderColor: "rgba(246, 248, 249, 0.75)",
  filterOptionTextColor: ["rgba(246, 248, 249, 0.8)", "#F6F8F9"],
  tooltipTextColor: "#191A1A75",
  tooltipBackgroundColor: "#F7F8FA",
  boxColor: styles["dark_boxColor"],
  boxBorderColor: styles["dark_boxBorderColor"],
  dropDownSelectAll: [["#202124", "#202124", "#202124"], ["#202124", "#202124", "#202124"]],
  fadedColor: ["rgba(0, 0, 0, 0.75)", "rgba(0, 0, 0,1)"],
  status_color,
  detailViewToolTipText: "rgba(25, 26, 26, 0.75)",
  summarisedViewSingleStatHeading: "#F6F8F9",
  switchThumbColor: "#f4f3f4",
  shimmerColor: ["#191A1A", "#232424"],
  lastOffset: "#1B1B1D",
  dangerColor: "#EF6969",
  orderDisableButton: "#F6F8F9",
  toastColorConfig: {
    backgroundColor: "#343434",
    textColor: "#FFFFFF",
  },
  primaryColor: "#0057c7",
  borderRadius: 7.0,
  borderWidth: 0.5,
  buttonBorderRadius: 4.0,
  buttonBorderWidth: 0.5,
  component: {
    background: Color.rgb(~r=57, ~g=57, ~b=57),
    borderColor: "#e6e6e650",
    dividerColor: "#e6e6e6",
    color: "#ffffff",
  },
  paypalButonColor: ("#ffffff", "#ffffff"),
  payNowButtonTextColor: "#FFFFFF",
  applePayButtonColor: ("#000000", "#000000"),
  googlePayButtonColor: ("#000000", "#000000"),
  payNowButtonColor: ("#0057c7", "#0057c7"),
  payNowButtonBorderColor: "#e6e6e650",
  payNowButtonShadowColor: "black",
  payNowButtonShadowIntensity: 2.,
  focusedTextInputBoderColor: "#0057c7",
  errorTextInputColor: "rgba(0, 153, 255, 1)",
  normalTextInputBoderColor: "rgba(204, 210, 226, 0.75)",
  shadowColor: "black",
  shadowIntensity: 2.,
}
let lightRecord = {
  platform: "android",
  paymentSheetOverlay: "#00000070",
  bgColor: styles["light_bgColor"],
  loadingBgColor: "rgb(244,244,244)",
  loadingFgColor: "rgb(250,250,250)",
  bgTransparentColor: styles["light_bgTransparentColor"],
  textPrimary: styles["light_textPrimary"],
  textSecondary: styles["light_textSecondary"],
  textSecondaryBold: styles["light_textSecondary_Bold"],
  placeholderColor: "#00000070",
  textInputBg: styles["light_textInputBg"],
  iconColor: "rgba(53, 64, 82, 0.25)",
  lineBorderColor: "#CCD2E250",
  linkColor: "#0099FF",
  disableBgColor: "#ECECEC",
  filterHeaderColor: "#666666",
  filterOptionTextColor: ["#354052", "rgba(53, 64, 82, 0.8)"],
  tooltipTextColor: "#F6F8F975",
  tooltipBackgroundColor: "#191A1A",
  boxColor: styles["light_boxColor"],
  boxBorderColor: styles["light_boxBorderColor"],
  dropDownSelectAll: [["#E7EAF1", "#E7EAF1", "#E7EAF1"], ["#F1F5FA", "#FDFEFF", "#F1F5FA"]],
  fadedColor: ["#CCCFD450", "rgba(53, 64, 82, 0.5)"],
  status_color,
  detailViewToolTipText: "rgba(246, 248, 249, 0.75)",
  summarisedViewSingleStatHeading: "#354052",
  switchThumbColor: "white",
  shimmerColor: ["#EAEBEE", "#FFFFFF"],
  lastOffset: "#FFFFFF",
  dangerColor: "#FF3434",
  orderDisableButton: "#354052",
  toastColorConfig: {
    backgroundColor: "#2C2D2F",
    textColor: "#F5F7FC",
  },
  primaryColor: "#006DF9",
  borderRadius: 7.0,
  borderWidth: 1.,
  buttonBorderRadius: 4.0,
  buttonBorderWidth: 0.0,
  component: {
    background: "#FFFFFF",
    borderColor: "rgb(226,226,228)",
    dividerColor: "#e6e6e6",
    color: "#000000",
  },
  paypalButonColor: ("#F6C657", "#F6C657"),
  applePayButtonColor: ("#000000", "#000000"),
  googlePayButtonColor: ("#000000", "#000000"),
  payNowButtonColor: ("#006DF9", "#006DF9"),
  payNowButtonTextColor: "#FFFFFF",
  payNowButtonBorderColor: "#ffffff",
  payNowButtonShadowColor: "black",
  payNowButtonShadowIntensity: 2.,
  focusedTextInputBoderColor: "#006DF9",
  errorTextInputColor: "rgba(0, 153, 255, 1)",
  normalTextInputBoderColor: "rgba(204, 210, 226, 0.75)",
  shadowColor: "black",
  shadowIntensity: 2.,
}

//for preDefine light and dark styles
let useThemeBasedStyle = () => {
  let isDarkMode = LightDarkTheme.useIsDarkMode()
  isDarkMode ? darkRecord : lightRecord
}
//for custom light and dark styles
// let useCustomThemeBasedStyle = (~lightStyle, ~darkStyle, ~defaultStyle=?, ()) => {
//   let isDarkMode = LightDarkTheme.useIsDarkMode()
//   let x = isDarkMode ? darkStyle : lightStyle

//   switch defaultStyle {
//   | Some(style) => array([style, x])
//   | None => x
//   }
// }
