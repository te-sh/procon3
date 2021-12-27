import * as React from "react"
import { Link } from "gatsby"

import Layout from "../components/layout"
import "./index.css"

const IndexPage = () => (
  <Layout>
    <h1>ABC</h1>
    <ul className="sites">
      <li><Link to="/abc03">ABC Part.3</Link></li>
    </ul>
  </Layout>
)

export default IndexPage
