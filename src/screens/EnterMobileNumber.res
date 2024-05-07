open ReactNavigation
open ReactNative
open Style
@react.component(: Core.screenProps)
let make = (~navigation as _, ~route as _) => {
  <View style={viewStyle(~flex=1., ~alignItems=#center, ~justifyContent=#center, ())}>
    <TextWrapper textType={HeadingBold} text="Enter Mobile Number" />
  </View>
}
