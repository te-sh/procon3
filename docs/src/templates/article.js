import React from "react"
import { graphql } from "gatsby"

import "katex/dist/katex.min.css"
import "./article.css"

import Layout from "../components/layout"

const Article = ({ data }) => {
  const article = data.markdownRemark

  return (
    <Layout>
      <div className="article-problem">
        <a href={article.frontmatter.url}
           style={{float: 'right'}} target="_blank" rel="noreferrer">
          問題
        </a>
      </div>
      <h1>{article.frontmatter.title}</h1>
      <div className="article-main"
           dangerouslySetInnerHTML={{ __html: article.html }} />
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
