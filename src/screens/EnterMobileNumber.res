open ReactNavigation
open ReactNative
open Style
open Reanimated
module IncreaseWidthAnimation = {
  @react.component
  let make = () => {
    let width = useSharedValue(100.)
    let handlePressToIncreaseWidth = _ => {
      width.value = withSpring(~toValue=width.value +. 100., ())
    }
    let animatedStyles = useAnimatedStyle(() => viewStyle(~width=width.value->dp, ()))

    <>
      <TextWrapper textType={HeadingBold} text="Increase width Animation" />
      <Space />
      <View
        style={array([
          animatedStyles,
          viewStyle(~height=60.->dp, ~borderRadius=10., ~backgroundColor="violet", ()),
        ])}
      />
      <Button onPress={handlePressToIncreaseWidth} title="Click me" />
    </>
  }
}

@react.component(: Core.screenProps)
let make = (~navigation as _, ~route as _) => {
  <View style={viewStyle(~flex=1., ~alignItems=#center, ())}>
    <Space height=60. />
    <TextWrapper textType={HeadingBold} text="React Native Animations" />
    <Space height=60. />
    <IncreaseWidthAnimation />
    //   <AnimatedStyleUpdateExample />
  </View>
}
