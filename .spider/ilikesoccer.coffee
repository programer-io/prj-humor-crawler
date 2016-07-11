casper = require('casper').create()

loginUrl = 'http://login.daum.net/accounts/loginform.do?url=http%3A%2F%2Fcafe.daum.net%2F_c21_%2Fhome%3Fgrpid%3D1WjuI%26_referer%3DV7kfJwkeLEE_BcNpTVULwWlKmNlFJ16Vno3o_FWAA1k0&category=cafe&t__nil_navi=login'

casper.start loginUrl, ->
  @echo 'start login'

casper.thenEvaluate ->
  document.querySelector('#id').value = 'meinzug'
  document.querySelector('#inputPwd').value = '4fhsrjsaos'
  document.querySelector('#loginBtn').click()

casper.waitForUrl 'http://cafe.daum.net/ASMONACOFC', ->
  @echo @getHTML()

casper.run()