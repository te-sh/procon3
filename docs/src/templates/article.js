import React from "react"
import { Link, graphql } from "gatsby"

import "katex/dist/katex.min.css"

import Layout from "../components/layout"

const Article = ({ data }) => {
  const article = data.markdownRemark

  return (
    <Layout>
      <div>
        <Link to={article.frontmatter.url}
              style={{float: 'right'}} target="_blank">
          問題
        </Link>
      </div>
      <h1>{article.frontmatter.title}</h1>
      <div dangerouslySetInnerHTML={{ __html: article.html }} />
    </Layout>
  )
}

export const query = graphql`
query($slug: String!) {
  markdownRemark(fields: { slug: { eq: $slug } }) {
    html
    frontmatter {
      url
      title
    }
  }
}
`

export default Article
