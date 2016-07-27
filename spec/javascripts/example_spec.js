describe('Example', function() {
    var example;

    beforeEach(function () {
        loadFixtures('example.html');
        example = Example();
        example.create();
    });

    it('should change the title', function() {
        expect($('#title').html()).toEqual('home');
    });
});