# Project forked from 

* https://github.com/drozental/graphql-tutorial

# Runned

* git clone https://github.com/codeauslander/graphql-tutorial.git
* cd graphql-tutorial
* bundle install
* rake db:create
* rake db:migrate
* rake db:seed
* rails s

* url http://localhost:3000/graphiql


# query 1

{
  pet(id: 1) {
    name
    kind
    capKind
    owner {
      lastName
      firstName
    }
  }
  pets {
    id
    name
    owner {
      lastName
      firstName
      bio
      pets {
        name
        kind
      }
    }
    activities {
      description
    }
  }
}

# query 2

mutation {
  createPet(name: "Raisin", kind: "Frenchie") {
    id
    name
    kind
  }
}

# query 3

{
  pets {
    id
    name
    owner {
      lastName
      firstName
      bio
      pets {
        name
        kind
      }
    }
    activities {
      description
    }
  }
}

# query 4

{
  pets {
    id
    name
    owner {
      lastName
      firstName
      bio
      pets {
        name
        kind
      }
    }
    activities {
      description
    }
  }
}

# query 5

{
  pets(last: 4) {
    pageInfo {
      startCursor
      endCursor
      hasNextPage
      hasPreviousPage
    }
    edges {
      cursor
      node {
        id
        name
        owner {
          lastName
          firstName
          bio
          pets {
            name
            kind
          }
        }
        activities {
          id
          description 
        }
      }
    }
  }
}

# query 6

{
pets(last: 4) {
    pageInfo {
      startCursor
      endCursor
      hasNextPage
      hasPreviousPage
    }
    edges {
      cursor
      node {
        id
        name
        owner {
          lastName
          firstName
          bio
          pets {
            name
            kind
          }
        }
        activities(first: 2) {
          edges {
            node {
              id
              decription 
            }
          }
        }
      }
    }
  }
}

