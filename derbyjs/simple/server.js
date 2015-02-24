var store = require('derby').createStore({
  // Use the mongo adapter to persist data and perform queries
    db: require('livedb-mongo')('localhost:27017/test?auto_reconnect',
                                {w:0, journal:false, fsync:false})
  // Keep a journal of all data changes and do PubSub with Redis
    , redis: require('redis').createClient()
});

var expressApp = require('express')()
  // Add browserchannel scripts to bundles created by store, and
  // return middleware for responding to remote client messages
    .use(require('racer-browserchannel')(store))
  // Respond to requests for application script bundles
    .use(app.scripts(store))
  // Create models for incoming requests
    .use(store.modelMiddleware())
  // Add the app's routes
    .use(app.router())

require('http').createServer(expressApp).listen(3000);
