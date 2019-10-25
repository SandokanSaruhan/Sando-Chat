# Sando Chat iOS APP - Swift 4.0
Sando is a simple iOS app for messaging with firebase cloud system. 

- It is a messaging app which use firebase as a dataholder

- it lets you to sign in with a nickname , then you can create new channels or join existing channels to chat

- it lest you sending message and images too

- This app support iOS 11.0+

## Message Kit 

Message Kit API used as provider.

## Firebase Database

Use [Firebase Database](https://firebase.google.com/docs/database/ios/start) for simple storing of messages images and user id when this is available.

- Create A Project Database on Firebase

- Create A GoogleService-Info.plist on Firebase, and change it with same file on Xcode Project 

- To set up anonymous authentication, open the Firebase App Dashboard, select the Authentication option on the left, click Set Up Sign-In Method, then select the Anonymous option, switch Enable so that it’s on, then click Save.

- For Channels data structure open the Firebase App Dashboard, select the Database option; choose  Cloud Firestone set up. It is an NoSQL Json Data Store. 

- To upload images, go the Firebase Storage in Firebase App Dashboard, then set it up by clicking

## How to build

1) Install pods

2) Open the workspace in Xcode

# Requirements

* Xcode 10.1
* iOS 11+









