App.User = DS.Model.extend({
  name: DS.attr('string')
});

App.Entry = DS.Model.extend({
  name: DS.attr('string'),
  tag: DS.attr('string'),
  fullText: DS.attr('string'),
  owner: DS.belongsTo('App.User'),
  story: DS.belongsTo('App.Story')
});

App.Story = DS.Model.extend({
  name: DS.attr('string'),
  tag: DS.attr('string'),
  synopsis: DS.attr('string'),
  owner: DS.belongsTo('App.User'),
  entries: DS.hasMany('App.Entry')
});