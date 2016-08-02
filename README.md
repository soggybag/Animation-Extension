# Animation-Extension

This example shows how to animate elements in your view controllers. The example makes use of an extension to 
UIViewController to simplify the process. The extension has a single method that allows you to animate: 

* x
* y
* alpha

It provides options for:

* time 
* delay

The values set the offset for view elements. Imagine that the values move an element by the amounts provided, and the
element moves back to it's original position. This system is not able to complex animation but would be good for 
adding motion to views as they load, or other simple UI aniamtions. 
