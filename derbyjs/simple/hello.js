var app = require('derby').createApp(module);

// Add template for rendering HTML and model <- -> view bindings
app.view.make('Body',
  'Holler: <input value="{hello.message}"><h1>{hello.message}</h1>'
             );

// Add a route, which can render in the browser as well as server
app.get('/', function(page, model) {
  // Specify data to sync
    model.subscribe('hello.message', function() {
        page.render();
    });
});
