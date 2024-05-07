// Uncomment this to compile this example outside of this repo
// in this example it's not necessary (since we are running it in the module repo itself)
open ReactNavigation
open ReactNative

module ModalScreen = {
  @react.component(: Core.screenProps)
  let make = (~navigation as _, ~route as _) => <Text> {"Hello From Modal"->React.string} </Text>
}

module MainStackScreen = {
  include Stack.Make()

  @react.component(: Core.screenProps)
  let make = (~navigation as _, ~route as _) =>
    <Navigator screenOptions={_ => {headerShown: false}}>
      <Screen name="SplashScreen" component=SplashScreen.make />
    </Navigator>
}

module RootStackScreen = {
  include Stack.Make()

  @react.component
  let make = () =>
    <Native.NavigationContainer>
      <Navigator
        screenOptions={_ => {
          headerShown: false,
          presentation: #modal,
        }}>
        <Screen name="Main" component=MainStackScreen.make />
        <Screen name="Modal"> {({navigation, route}) => <ModalScreen navigation route />} </Screen>
      </Navigator>
    </Native.NavigationContainer>
}
