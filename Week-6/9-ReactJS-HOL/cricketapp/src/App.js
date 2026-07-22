import logo from './logo.svg';
import './App.css';
import { ListofPlayers, ScoreBelow70 } from './ListofPlayers';
import { EvenPlayers, IndianPlayers, IndianTeam, ListofIndianPlayers, OddPlayers } from './IndianPlayers';

function App() {

  let flag = true;

  if (flag === true) {
    return (
      <div>
        <h1>List of Players</h1>

        <ListofPlayers />

        <hr />

        <h1>List of Players having Scores Less than 70</h1>

        <ScoreBelow70 />
      </div>
    )
  } else {
    return (
      <div>

        <h1>Odd Players</h1>

        {OddPlayers(IndianTeam)}

        <hr />

        <h1>Even Players</h1>

        {EvenPlayers(IndianTeam)}

        <hr />

        <h1>List of Indian Players Merged:</h1>

        <ListofIndianPlayers IndianPlayers={IndianPlayers} />

      </div>
    )
  }
}

export default App;
