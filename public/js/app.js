import React, { Component } from "react"
import UITest from "./UITest"

class App extends Component{
    render() {
        return (
            <div class="dialog">
                <div>
                    <h1>Hello WUKS!!.</h1>
                    <p>First Test Page.</p>
                </div>
                <UITest/>
            </div>
        )
    }
}

export default App;