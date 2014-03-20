# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

#= require_self
#= require_tree ./controllers/main

#create Angular module
Blog = angular.module('Blog', ['ngRoute'])

Blog.config(['$routeProvider', ($routeProvider) ->
  $routeProvider.when('/post/:postId', { templateUrl: '../assets/mainPost.html', controller: 'PostCtrl' })
  $routeProvider.otherwise({ templateUrl: '../assets/mainIndex.html', controller: 'IndexCtrl' })
  ])
