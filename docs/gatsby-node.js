const { createFilePath } = require(`gatsby-source-filesystem`)

exports.createPages = async ({ graphql, actions, reporter }) => {
  const { createPage } = actions

  const result = await graphql(`
    query {
      allMarkdownRemark {
        nodes {
          id
          fields {
            slug
          }
        }
      }
    }
  `)

  if (result.errors) {
    reporter.panicOnBuild(`result.errors`)
    return
  }

  result.data.allMarkdownRemark.nodes.forEach(article => {
    console.log(article)
    createPage({
      path: article.fields.slug,
      component: require.resolve("./src/templates/article.js"),
      context: {
        slug: article.fields.slug
      }
    })
  })
}

exports.onCreateNode = ({ node, getNode, actions }) => {
  const { createNodeField } = actions

  if (node.internal.type == `MarkdownRemark`) {
    const value = `/articles${createFilePath({ node, getNode })}`
    createNodeField({ name: `slug`, node, value })
  }
}
