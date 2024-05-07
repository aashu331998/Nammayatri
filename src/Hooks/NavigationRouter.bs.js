// Generated by ReScript, PLEASE EDIT WITH CARE

import * as React from "react";
import * as Caml_option from "rescript/lib/es6/caml_option.js";
import * as SplashScreen from "../screens/SplashScreen.bs.js";
import * as ReactNative from "react-native";
import * as GettingStarted from "../screens/GettingStarted.bs.js";
import * as EnterMobileNumber from "../screens/EnterMobileNumber.bs.js";
import * as JsxRuntime from "react/jsx-runtime";
import * as Stack$ReactNavigation from "rescript-react-navigation/src/Stack.bs.js";
import * as Native from "@react-navigation/native";

function NavigationRouter$MainApp(props) {
  return JsxRuntime.jsx(ReactNative.Text, {
              children: "Hello From Modal"
            });
}

var MainApp = {
  make: NavigationRouter$MainApp
};

var include = Stack$ReactNavigation.Make({});

var $$Navigator = include.$$Navigator;

var $$Screen = include.$$Screen;

function NavigationRouter$CustomerOnboarding(props) {
  return JsxRuntime.jsxs($$Navigator.make, {
              screenOptions: (function (param) {
                  return {
                          headerShown: false
                        };
                }),
              children: [
                JsxRuntime.jsx($$Screen.make, {
                      name: "GettingStarted",
                      component: GettingStarted.make
                    }),
                JsxRuntime.jsx($$Screen.make, {
                      name: "EnterMobileNumber",
                      component: EnterMobileNumber.make
                    })
              ]
            });
}

var CustomerOnboarding_Group = include.Group;

var CustomerOnboarding = {
  $$Navigator: $$Navigator,
  $$Screen: $$Screen,
  Group: CustomerOnboarding_Group,
  make: NavigationRouter$CustomerOnboarding
};

var include$1 = Stack$ReactNavigation.Make({});

var $$Navigator$1 = include$1.$$Navigator;

var $$Screen$1 = include$1.$$Screen;

function NavigationRouter$RootStackScreen(props) {
  var match = React.useState(function () {
        return "SplashScreen";
      });
  var setFlow = match[1];
  React.useEffect((function () {
          setTimeout((function () {
                  setFlow(function (param) {
                        return "CustomerOnboarding";
                      });
                }), 1500);
        }), []);
  var tmp;
  switch (match[0]) {
    case "SplashScreen" :
        tmp = JsxRuntime.jsx($$Screen$1.make, {
              name: "SplashScreen",
              component: SplashScreen.make
            });
        break;
    case "CustomerOnboarding" :
        tmp = JsxRuntime.jsx($$Screen$1.make, {
              name: "CustomerOnboarding",
              component: NavigationRouter$CustomerOnboarding
            });
        break;
    case "MainApp" :
        tmp = JsxRuntime.jsx($$Screen$1.make, {
              name: "MainApp",
              children: (function (param) {
                  return JsxRuntime.jsx(NavigationRouter$MainApp, {
                              navigation: param.navigation,
                              route: param.route
                            });
                })
            });
        break;
    
  }
  return JsxRuntime.jsx(Native.NavigationContainer, {
              children: JsxRuntime.jsx($$Navigator$1.make, {
                    screenOptions: (function (param) {
                        return {
                                presentation: "transparentModal",
                                headerShown: false
                              };
                      }),
                    children: Caml_option.some(tmp)
                  })
            });
}

var RootStackScreen_Group = include$1.Group;

var RootStackScreen = {
  $$Navigator: $$Navigator$1,
  $$Screen: $$Screen$1,
  Group: RootStackScreen_Group,
  make: NavigationRouter$RootStackScreen
};

export {
  MainApp ,
  CustomerOnboarding ,
  RootStackScreen ,
}
/* include Not a pure module */
