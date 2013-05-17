App.Router.map(function() {
  this.resource("users"),
  this.resource("entries"),
  this.resource("stories", function() {
    this.resource("story", { path: ':story_id' }, function() {
        this.resource("entry", {path: "entries/:entry_id"})
    });
  })
});

App.UsersRoute = Ember.Route.extend({
    model: function() {
		return App.User.find();
	}
});

App.EntriesRoute = Ember.Route.extend({
    model: function() {
    	return App.Entry.find();
	}
});

App.StoriesRoute = Ember.Route.extend({
    model: function() {
        return App.Story.find();
	}
});