@spider_ilikesoccer = ->
  spawn = require('child_process').spawn

  fileName = 'ilikesoccer.coffee'

  spiderFile  = Meteor.rootPath + '/../../../../../.spider/' + fileName
  spider = spawn('casperjs', [spiderFile])

  # html controller
  spider.stdout.on 'data', (data) ->
    console.log 'stdout: ' + data

  spider.stderr.on 'data', (err) ->
    console.log 'stderr: ' + err

  spider.on 'exit', (code) ->
    console.log 'child process exited with code ' + code
