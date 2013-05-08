// App.Session.FIXTURES = [
//     {id:1, name: "first"},
// 	{id:2, name: "second"}
// ]

App.User.FIXTURES = [
    {id:1, name: "first"},
  {id:2, name: "second"}
]

App.Entry.FIXTURES = [
    {id:1, name: "first entry", tag: "tag1", fullText: "here is the fulltext for entry 1", owner: "1", story: "1"},
  {id:2, name: "second entry", tag: "tag2", fullText: "here is the fulltext for entry 2", owner: "2", story: "1"},
]

App.Story.FIXTURES = [
    {id:1, name: "first story", tag: "tag1", synopsis: "here is the synopsis for story 1", owner: "1", entries: ["1","2"]},
  {id:2, name: "second story", tag: "tag2", synopsis: "here is the synopsis for story 2", owner: "2"},
]