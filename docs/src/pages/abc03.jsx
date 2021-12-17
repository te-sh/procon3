import * as React from "react"
import { Link } from "gatsby"

import Layout from "../components/layout"

const Article = ({ children, to }) => (
  <Link to={`/articles/abc03/${to}`}>{children}</Link>
)

const IndexPage = () => (
  <Layout>
    <h1>ABC Part3</h1>
    <table>
      <tbody>
        <tr>
          <td>#230</td>
          <td><Article to="230/a">A問題</Article></td>
          <td><Article to="230/b">B問題</Article></td>
          <td><Article to="230/c">C問題</Article></td>
        </tr>
      </tbody>
    </table>
  </Layout>
)

export default IndexPage
