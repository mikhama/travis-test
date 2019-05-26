const helloTravis = require('./hello-travis');

describe('helloTravis', () => {
    it('should be an instance of Function', () => {
        expect(helloTravis).toBeInstanceOf(Function);
    });

    it('should return undefined', () => {
        expect(helloTravis()).toBeUndefined();
    });
});