describe('E2E: Main page', function() {

  beforeEach(function() {
    browser.get('/');
    var email = element(by.css('input[type=email]'));
    var username = element(by.css('input[type=text]'));
    var password = element(by.css('input[type=password]'));
    var name = $('#bomb-name');
    var phoneNumber = $('#bomb-number')
  });

  it('should load a login page', function() {
    var login = element(by.css('#login'));
    expect(login.isPresent()).toBeTruthy();
  });

  it('should load a register page', function() {
    element(by.id("registerLink")).click();
    expect(element(by.id('register')).isPresent()).toBeTruthy();
  });

  it('should allow a user to register',function() {
    $("#registerLink").click();
    $("#email").sendKeys('test123@test.com');
    $("#username").sendKeys('andrew');
    $("#password").sendKeys('andrew123');
    $("#submit-user").click();
    expect($("#home").isPresent()).toBeTruthy();
  });

  it('adds a friend to goatbomb', function(){
    element(by.id("registerLink")).click();
    email.sendKeys('test@test.com');
    username.sendKeys('tester123');
    password.sendKeys('test123434');
    element(by.css('input[type=submit]')).click();
    name.sendKeys('andrew');
    phoneNumber.sendKeys('07545969025');
    $('#bomb-friend').click();
    expect(element(by.repeater('friend in friends')).getText()).toEqual('Name: andrew Phone: 07545969025');
  })

  it('should allow user to click goatbomb', function(){
    element(by.id("registerLink")).click();
    var email = element(by.id('email'));
    var username = element(by.css('input[type=text]'));
    var password = element(by.css('input[type=password]'));
    email.sendKeys('test@test.com');
    username.sendKeys('tester');
    password.sendKeys('test1234');
    element(by.css('input[type=submit]')).click();
    $("#goat-bomb").click();
    expect($('.message').isDisplayed()).toBeTruthy();
  });

});
