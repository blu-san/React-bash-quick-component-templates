import React from 'react';
import './MyComponent.css';

class MyComponent extends React.Component {
    constructor(props) {
        super(props);
        this.state = {};
    }
    render() {
        return (
            <h1>{/* replace me! */}</h1>
        );
    }
    componentDidMount() {
        // instance of a component is being created and inserted into the DOM
    }
    componentDidUpdate() {
        // component is being re-rendered
    }
    componentWillUnmount() {
        // component is being removed from the DOM
    }
}

export default MyComponent;