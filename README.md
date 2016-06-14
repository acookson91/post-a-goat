Post a Goat
==================

**Task to build a app that sends a goat text message to any of your registered friends.**

 ## Installation Instructions

 To install the takeaway software you must follow these Instructions.

 ```
 $ git clone https://github.com/acookson91/post-a-goat.git
 $ cd post-a-goat
 ```
 
 ## Design approach and Challenges
 
 We first wanted to build our MVP in Ruby on Rails using the twillio API to send texts. After our first day we can an MVP runing without users being registered. 
 
 After completing this we decided it would be nice to try and using angularJS for our frontend and a Rails APi to pass data across. This would also allow users to send texts and add contacts without the page refreshing. 
 
 Being the first time that we have worked in angularJS there were the problems of rails CSRF receiving information posted to it from our angular app. 
 
 ## Instructions

Post a goat is an application that allows you to send a goat text message to any of your friends at the click of a button. 

You must follow three steps to send a goat:

1. Register yourself as a user
2. Add your friends/enemies to your post-a-goat list
3. Click Post-a-Goat button!

# User Stories
## MVP stories (beta)
```
As a potential goat bomber,
So that I can goat bomb my friends,
I want to add a list of friends to Goat Bomb.
```
```
As a potential goat bomber,
So that my friend receives a goat bomb,
I want to send a goat bomb from Goat Bomb by SMS.
```
```
As a goat bombee,
So that I can be amused by goat bomb,
I want to receive a emoji goat.
```
## Version 0.1 stories
```
As a goat bomber,
So that I can automatically send goat bombs on a friend's birthday,
I want to be able to schedule goat bombs in Goat Bomb.
```
```
As a goat bomber,
So that I can send goat bombs on birthdays,
I want to send a goat bomb automatically
```
