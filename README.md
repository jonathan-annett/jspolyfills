# jspolyfills

includes polyfills for:

    - Object.keys
    - Object.values
    - Error.prototype.toJSON
    - Array.isArray
    - Array.prototype.flat
    - String.prototype.split(RegExp)
    - String.prototype.includes
    - Proxy (from [es6-proxy-polyfill](https://github.com/ambit-tsai/es6-proxy-polyfill)

also, not strictly polyfills...
interally adds the following extensions to Object:
    - Object.jsClass
    - Object.polyfills
    - Object.env
        - Object.env.isNode   **true if this code is in node.js**

also defines:
    - RegExp.split(haystack, needle, limit, map)
        This is the implementation of split which is called by String.prototype.split when the "needle" parameter is a RegExp object

may also define
    - String.split(haystack,needle,limit)
      this is the native String.prototype.split function, unbound to require the "this" parameter to be passed in as "haystack"
      eg String.split("hello world"," ") --> ["hello","world"]
