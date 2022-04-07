import * as React from "react"
import { Link } from "gatsby"

import Layout from "../components/layout"

import "./problems.css"

const Article = ({ children, to }) => (
  <Link to={`/articles/training/${to}`}>{children}</Link>
)

const Training = () => (
  <Layout>
    <h1>ABC Training</h1>
    <h2>Easy</h2>
    <table className="problems">
      <tbody>
        <tr>
          <td><Article to="easy/001">#1</Article></td>
        </tr>
      </tbody>
    </table>
  </Layout>
)

export default Training
