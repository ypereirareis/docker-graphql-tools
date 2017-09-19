# Docker GraphQL Tools
A docker image with some graphql tools

## Install

```shell
git clone git@github.com:ypereirareis/docker-graphql-tools.git gql-tools && cd gql-tools
```

## Build/pull

```shell
docker pull ypereirareis/gql-tools
```

Or you can build the image locally

```shell
docker build -t gql-tools .
```

## graphql-cli

Swiss Army Knife for your GraphQL Project.  
[https://github.com/graphcool/graphql-cli](https://github.com/graphcool/graphql-cli)

### Init (to generate .graphqlconfig file)

```shell
docker run --rm -it \
  --network=host \
  -v `pwd`:/app \
    gql-tools graphql init
```

You should have this kind of configuration at the end:

```shell
? Local schema file path: schema.graphql
? Endpoint URL (Enter to skip): http://127.0.0.1/graphql
? Name of this endpoint, for e.g. default, dev, prod: dev
? Subscription URL (Enter to skip):
? Do you want to add other endpoints? No
? What format do you want to save your config in? JSON

About to write to /app/.graphqlconfig:

{
  "schemaPath": "schema.graphql",
  "extensions": {
    "endpoints": {
      "dev": "http://127.0.0.1/graphql"
    }
  }
}

? Is this ok? Yes
```

### Generate/download IDL file from endpoint

```shell
docker run --rm -it \
  --network=host \
  -v `pwd`:/app gql-tools \
    graphql get-schema
```

## graphdoc

Static page generator for documenting GraphQL Schema. 
[https://github.com/2fd/graphdoc](https://github.com/2fd/graphdoc)

### Generate documentation from IDL file

```shell
docker run --rm -it \
  --network=host \
  -v `pwd`:/app gql-tools \
    graphdoc -s ./idlfile.schema.graphql -o ./doc/schema
```

## LICENSE

The MIT License (MIT)

Copyright (c) 2017 Yannick Pereira-Reis

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
