import logo from './logo.svg';
import './App.css';
import "./App.css";
import BookDetails from "./BookDetails";
import BlogDetails from "./BlogDetails";
import CourseDetails from "./CourseDetails";

import { books, blogs, courses } from "./Data";

function App() {

  return (
    <div className="container">

      <div className="section">
        <CourseDetails courses={courses} />
      </div>

      <div className="section">
        <BookDetails books={books} />
      </div>

      <div className="section">
        <BlogDetails blogs={blogs} />
      </div>

    </div>
  );
}

export default App;
