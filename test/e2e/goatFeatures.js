describe('Goat app', function(){
  it('has a title', function(){
    browser.get('/');
    expect(browser.getTitle()).toEqual('Post a Goat');
  });
});
