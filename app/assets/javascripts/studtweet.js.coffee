app = angular.module("Studtweet", ["ngResource"])

@StudCtrl = ($scope, $resource) ->
	
	Conference = $resource("conferences/:id", {id: "@id"}, {update: {method:"PUT"}})

	$scope.conferences = Conference.query()
			
	$scope.addConference = ->
		entry = Conference.save($scope.newConference)
		$scope.conferences.push(conferences)
		$scope.newConference = {}