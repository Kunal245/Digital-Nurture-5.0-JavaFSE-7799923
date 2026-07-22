import logo from './logo.svg';
import './App.css';
import office from "./images/office.jpg"

function App() {

  const element = "Office Space"

  const officeList = [
    {
      Name: "DBS",
      Rent: 50000,
      Address: "Chennai",
    }
  ]


  return (
    <div style={{ marginLeft: "40px" }}>

      <h1>{element}, at Affordable Range</h1>

      <img
        src={office}
        width="25%"
        height="25%"
        alt="Office Space"
      />

      {
        officeList.map((item, index) => (

          <div key={index}>

            <h1>Name: {item.Name}</h1>

            <h3
              style={{
                color: item.Rent <= 60000 ? "red" : "green"
              }}
            >
              Rent: Rs. {item.Rent}
            </h3>

            <h3>Address: {item.Address}</h3>

          </div>

        ))
      }

    </div>
  );
}

export default App;
