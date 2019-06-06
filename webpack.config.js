const path = require('path')

module.exports = {
    mode: "development",
    entry: ['@babel/polyfill', "./public/js/index.js"],
    output: {
        filename: "budle.js",
        path: path.join(__dirname, 'public')
    },
    module: {
        rules: [
            {
                test: /\.jsx?$/,
                exclude: [ /node_modules/ ],
                loader: 'babel-loader',
                options: {
                    presets: [
                      "@babel/preset-env","@babel/react"
                    ]
                  }
            }
        ]
    },
    devtool: 'source-map'
}