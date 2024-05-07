open ReactNative
open Style

@react.component
let make = (~props, ~rootTag) => {
  <SafeAreaView style={viewStyle(~flex=1., ())}>
    <NavigationRouter.RootStackScreen />
  </SafeAreaView>
}
