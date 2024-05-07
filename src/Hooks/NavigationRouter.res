// Uncomment this to compile this example outside of this repo
// in this example it's not necessary (since we are running it in the module repo itself)
open ReactNavigation
open ReactNative

module MainApp = {
  @react.component(: Core.screenProps)
  let make = (~navigation as _, ~route as _) => <Text> {"Hello From Modal"->React.string} </Text>
}

module CustomerOnboarding = {
  include Stack.Make()

  @react.component(: Core.screenProps)
  let make = (~navigation as _, ~route as _) =>
    <Navigator screenOptions={_ => {headerShown: false}}>
      <Screen name="GettingStarted" component=GettingStarted.make />
      <Screen name="EnterMobileNumber" component=EnterMobileNumber.make />
    </Navigator>
}
type flow = SplashScreen | CustomerOnboarding | MainApp
module RootStackScreen = {
  include Stack.Make()

  @react.component
  let make = () => {
    let (flow, setFlow) = React.useState(_ => SplashScreen)
    React.useEffect0(() => {
      setTimeout(() => {
        setFlow(_ => CustomerOnboarding)
        ()
      }, 1500)->ignore
      ()
      None
    })
    <Native.NavigationContainer>
      <Navigator
        screenOptions={_ => {
          headerShown: false,
          presentation: #transparentModal,
          //  presentation: #modal,
        }}>
        {switch flow {
        | SplashScreen => <Screen name="SplashScreen" component=SplashScreen.make />
        | CustomerOnboarding =>
          <Screen name="CustomerOnboarding" component=CustomerOnboarding.make />
        | MainApp =>
          <Screen name="MainApp"> {({navigation, route}) => <MainApp navigation route />} </Screen>
        }}
      </Navigator>
    </Native.NavigationContainer>
  }
}
