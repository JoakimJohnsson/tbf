import React, { Component } from 'react';
import Routes from './routes';



class App extends Component {

    render() {
        return(
            <div>
                React
                <Routes />
            </div>
        )}
}


export default App;

// import React, { Component } from 'react';
// // import logo from './logo.svg';
// import './App.css';
// import axios from 'axios';
//
// // https://jsonplaceholder.typicode.com/posts
//
// // How to use an instance of Axios to create a baseURL.
// const axiosInstance = axios.create({
//     baseURL: 'https://jsonplaceholder.typicode.com'
// });
//
// class App extends Component {
//     state = {
//         hello: null
//     };
//
//     componentDidMount() {
//         axiosInstance.get('/posts')
//             .then(res => console.log("RES DATA: ", res.data))
//             .catch(err => console.log(err))
//     }
//
//     render() {
//         return (
//             <div>
//                 {this.state.hello
//                     ? <h1> {this.state.hello} </h1>
//                     : null}
//
//             </div>
//         );
//     }
// }
//
// export default App;
