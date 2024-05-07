open ReactNavigation
open ReactNative
open Style
@react.component(: Core.screenProps)
let make = (~navigation, ~route as _) => {
  <View style={viewStyle(~flex=1., ~alignItems=#center, ~justifyContent=#center, ())}>
    <Text> {"Hello From SplashScreen"->React.string} </Text>
    <Space />
    <CustomButton
      borderWidth=0.
      onPress={_ => Core.Navigation.navigate(navigation, "Modal")}
      text="Navigate to Screen"
    />
    <Space />
    <CustomButton
      borderWidth=0.
      onPress={_ => Core.Navigation.navigate(navigation, "Modal")}
      text="Navigate to Screen"
    />
  </View>
}
