import React, { Component } from "react"
import Button from '@material-ui/core/Button';

class UITest extends Component {
    render() {
        return (
            <div>
                <Button variant="contained">
                    Default
                </Button>
                <Button variant="contained" color="primary">
                    Primary
                </Button>
                <Button variant="contained" color="secondary">
                    Secondary
                </Button>
                <Button variant="contained" color="secondary" disabled>
                    Disabled
                </Button>
                <Button variant="contained" href="#contained-buttons">
                    Link
                </Button>
            </div>
        )
    }
}

export default UITest;