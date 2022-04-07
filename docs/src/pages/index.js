import * as React from "react"
import { Link } from "gatsby"

import Layout from "../components/layout"
import "./index.css"

const IndexPage = () => (
  <Layout>
    <h1>ABC</h1>
    <ul className="sites">
      <li><Link to="/abc03">ABC Part.3</Link></li>
      <li><Link to="/training">ABC Training</Link></li>
    </ul>

    <h1>Yukicoder</h1>
    <ul className="sites">
      <li><Link to="/yuki04">Yukicoder (〜No.2000)</Link></li>
    </ul>
  </Layout>
)

export default IndexPage
