import * as React from "react"
import { Link } from "gatsby"

import Layout from "../components/layout"

import "./problems.css"

const Article = ({ children, to }) => (
  <Link to={`/articles/yuki04/${to}`}>{children}</Link>
)

const Yuki04Page = () => (
  <Layout>
    <h1>Yukicoder (〜No.2000)</h1>
    <table className="problems">
      <tbody>
        <tr>
          <td><Article to="1750/1701">No.1701</Article></td>
          <td><Article to="1750/1702">No.1702</Article></td>
          <td><Article to="1750/1703">No.1703</Article></td>
          <td><Article to="1750/1704">No.1704</Article></td>
        </tr>
      </tbody>
    </table>
  </Layout>
)

export default Yuki04Page
