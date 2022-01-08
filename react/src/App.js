import './App.css';

import Nav from './nav'
import Player from './player';

export default function App() {
  return (
    <html className='App'>
      <header className='Nav-header'>
        <Nav />
      </header>
      <body className='App-body'>
        <Player />
      </body>
    </html>
  );
}