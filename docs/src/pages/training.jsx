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
          <td><Article to="easy/002">#2</Article></td>
          <td><Article to="easy/003">#3</Article></td>
          <td><Article to="easy/004">#4</Article></td>
          <td><Article to="easy/005">#5</Article></td>
        </tr>
      </tbody>
    </table>

    <h2>Medium</h2>
    <table className="problems">
      <tbody>
        <tr>
          <td><Article to="medium/001">#1</Article></td>
          <td><Article to="medium/002">#2</Article></td>
        </tr>
      </tbody>
    </table>
  </Layout>
)

export default Training
