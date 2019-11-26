import React, { Component } from 'react';
// import logo from './logo.svg';
import './App.css';
import axios from 'axios';

// https://jsonplaceholder.typicode.com/posts

class App extends Component {
    state = {
        hello: null
    };

    componentDidMount() {
        axios.get('https://jsonplaceholder.typicode.com/posts')
            .then(res => console.log("RES DATA: ", res.data))
            .catch(err => console.log(err))
    }

    render() {
        return (
            <div>
                {this.state.hello
                    ? <h1> {this.state.hello} </h1>
                    : null}

            </div>
        );
    }
}

export default App;
