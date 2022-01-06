import * as React from "react"
import { Link } from "gatsby"

import Layout from "../components/layout"

import "./problems.css"

const Article = ({ children, to }) => (
  <Link to={`/articles/abc03/${to}`}>{children}</Link>
)

const IndexPage = () => (
  <Layout>
    <h1>ABC Part3</h1>
    <table className="problems">
      <tbody>
        <tr>
          <td>#230</td>
          <td><Article to="230/a">A問題</Article></td>
          <td><Article to="230/b">B問題</Article></td>
          <td><Article to="230/c">C問題</Article></td>
          <td><Article to="230/d">D問題</Article></td>
          <td><Article to="230/e">E問題</Article></td>
          <td><Article to="230/f">F問題</Article></td>
          <td>G問題</td>
          <td>H問題</td>
        </tr>
        <tr>
          <td>#229</td>
          <td><Article to="229/a">A問題</Article></td>
          <td><Article to="229/b">B問題</Article></td>
          <td><Article to="229/c">C問題</Article></td>
          <td><Article to="229/d">D問題</Article></td>
          <td><Article to="229/e">E問題</Article></td>
          <td><Article to="229/f">F問題</Article></td>
          <td>G問題</td>
          <td>H問題</td>
        </tr>
        <tr>
          <td>#228</td>
          <td><Article to="228/a">A問題</Article></td>
          <td><Article to="228/b">B問題</Article></td>
          <td><Article to="228/c">C問題</Article></td>
          <td><Article to="228/d">D問題</Article></td>
          <td><Article to="228/e">E問題</Article></td>
          <td><Article to="228/f">F問題</Article></td>
          <td>G問題</td>
          <td>H問題</td>
        </tr>
      </tbody>
    </table>
  </Layout>
)

export default IndexPage
