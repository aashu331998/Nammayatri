open ReactNavigation
open ReactNative
open Style
@react.component(: Core.screenProps)
let make = (~navigation as _, ~route as _) => {
  <Gradient.LinearGradient
    style={viewStyle(
      ~flex=1.,
      ~alignItems=#center,
      ~justifyContent=#center,
      ~backgroundColor="#7435FC",
      (),
    )}
    start={{x: 0.5, y: 0.5}}
    end={{x: 1., y: 0.47}}
    locations=[0.1, 0.2, 0.4, 0.7, 0.9]
    colors=["#7435FC", "#7A39FB", "#8D45FA", "#AB59F8", "#CA6DF6"]>
    <Svg.SvgXml
      onError={() => {
        ()
      }}
      onLoad={() => {
        ()
      }}
      xml=Mapbgforsplash.svg
      width="100%"
      height="100%"
      fill="red"
    />
    <View
      style={viewStyle(
        ~position=#absolute,
        ~flex=1.,
        ~width=100.->pct,
        ~height=100.->pct,
        ~alignItems=#center,
        ~justifyContent=#center,
        (),
      )}>
      <Svg.SvgXml
        onError={() => {
          ()
        }}
        onLoad={() => {
          ()
        }}
        xml=SplashLogo.svg
        width="70%"
        height="100%"
        fill="red"
      />
      <View
        style={viewStyle(
          ~position=#absolute,
          ~flex=1.,
          ~width=100.->pct,
          ~height=100.->pct,
          ~alignItems=#center,
          ~justifyContent=#"flex-end",
          (),
        )}>
        <Svg.SvgXml
          onError={() => {
            ()
          }}
          onLoad={() => {
            ()
          }}
          xml=SplashJuspayLogo.svg
          width="25%"
          height="20%"
          fill="red"
        />
      </View>
    </View>
  </Gradient.LinearGradient>
}
