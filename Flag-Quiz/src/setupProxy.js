const { createProxyMiddleware } = require('http-proxy-middleware');

module.exports = function (app) {
  app.use(
    '/v2',
    createProxyMiddleware({
      target: 'http://localhost:3000', // Rails server address
      changeOrigin: true,
    })
  );
};