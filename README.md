# Explore WKScriptMessageHandler

[![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/chicio/React-Native-Native-Modules-Communication/master/LICENSE.md)

An example project in which I describe a simple architecture for communication between React Native Native Modules 
(usually called bridges) and the Native UIViewController/Activity/Fragment that host the React Native component. 
Generally speaking the architecture shown in this project is useful to let the Native Modules communicate with your 
existing native codebase.
This is a project for my blog posts:

* [React Native: a simple architecture for Native Modules communication with your native code on Android](https://www.fabrizioduroni.it/2018/12/02/react-native-modules-bridge-communication-activitiy-fragment-android.html "React Native: a simple architecture for Native Modules communication with your Activities and Fragments on Android") 
* [React Native: a simple architecture for Native Modules communication with your UIViewController on iOS](https://www.fabrizioduroni.it/2018/12/03/react-native-modules-bridge-communication-uiviewcontroller-ios.html "React Native: a simple architecture for Native Modules communication with your UIViewController on iOS")  

### Description

This are some quotes from the posts:

> ...Sometimes when you integrated React Native in an existing app, you will want to be able let your Native 
Modules bridges communicate with your activities and fragment, especially the ones that contain the React Native View
. In this post I will show you an architecture to put in place this communication on Android, that will be compatible 
with all the features of React Native (for example it will work als with the live reload functionality)... 

Click on the links above to read the posts.
