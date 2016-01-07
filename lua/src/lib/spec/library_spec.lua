local library = require('library')
describe("strip function", function()
  return it("should remove leading and trailing characters", function()
    assert.are.same(library.strip('/derp', '/'), 'derp')
    assert.are.same(library.strip('derp', '/'), 'derp')
    assert.are.same(library.strip('derp ', '/'), 'derp ')
    assert.are.same(library.strip(' /derp', '/'), ' /derp')
    assert.are.same(library.strip('//derp//', '/'), 'derp')
    return assert.are.same(library.strip('//derp// ', '/'), 'derp// ')
  end)
end)
return describe("trim function", function()
  return it("should remove leading and trailing whitespace", function()
    assert.are.same(library.trim('  derp '), 'derp')
    assert.are.same(library.trim('derp'), 'derp')
    assert.are.same(library.trim('derp\n'), 'derp')
    return assert.are.same(library.trim('\nderp\n'), 'derp')
  end)
end)
