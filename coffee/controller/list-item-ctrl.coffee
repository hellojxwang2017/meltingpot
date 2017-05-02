ListItemCtrl = ($scope, githubService) ->
  $scope.subjectlist = []
  $scope.getNotifications = (repo) ->
    githubService.notifications(repo)
      .then (response) ->
        for object in response
          $scope.subjectlist.push(object)
       
  return

ListItemCtrl
  .$inject = ['$scope', 'githubService']

angular.module('meltingpot')
  .controller 'ListItemCtrl', ListItemCtrl

