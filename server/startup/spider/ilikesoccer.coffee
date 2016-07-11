@spider_i_like_soccer = ->
  req     = require 'request'
#  cheerio = require 'cheerio'

  urlLogin = 'http://login.daum.net/accounts/loginform.do?url=http%3A%2F%2Fcafe.daum.net%2F_c21_%2Fhome%3Fgrpid%3D1WjuI&category=cafe&t__nil_navi=login'


  headers =
    'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8; rv:24.0) Gecko/20100101 Firefox/24.0'
    'Content-Type' : 'application/x-www-form-urlencoded'

  form =
    id: 'meinzug'
    inputPwd: '4fhsrjsaos'

  req.post {url: urlLogin, form: form, headers: headers }, (err, res, body) ->
    console.log body