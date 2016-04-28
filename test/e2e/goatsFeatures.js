describe('E2E: Main page', function() {

  beforeEach(function() {
    browser.get('/');
  });

  it('should load a home page', function() {
    expect(element(by.css('#home')).isPresent()).toBeTruthy();
  });

  it('should load a register page', function() {
    element(by.id("registerLink")).click();
    expect(element(by.id('register')).isPresent()).toBeTruthy();
  });

  it('should allow a user to register',function() {
    element(by.id("registerLink")).click();
    var email = element(by.id('email'));
    var username = element(by.css('input[type=text]'));
    var password = element(by.css('input[type=password]'));

    email.sendKeys('test@test.com');
    username.sendKeys('tester');
    password.sendKeys('test1234');
    element(by.css('input[type=submit]')).click();
    expect(element(by.id('welcome')).isPresent()).toBeTruthy();
  });

  it('should allow user to click goatbomb', function(){
    element(by.id("goat-bomb")).click();
    expect(element(by.id('bombed'))).toEqual('Bombed Yo');
  })
});
