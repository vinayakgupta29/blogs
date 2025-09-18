--- 
layout: post 
title:  Networking Learning Series 
date:   2025-08-10 
author: Vinayak Gupta 
contact: vinayakg236@gmail.com
categories: [ Tech, Networking, Learning ]
---

I have been quite interested in Networking both the Human Kind and the Computer Kind so I'm going to learn networking and 
Cyber Security from scratch and We're going to be making FTP servers and TCP/IP web-servers and serving static files over 
the network. 


Any code that we need to be doing will be in C/C++, cause I want the things to be as bare bone as it can be. So that we can 
learn what actually goes under the hood when you make a web server in those high level language such as python and JS where 
you just go

```javascript
const express = require("express")

const app = express();

app.listen(3000, ()=>{
    console.log(Listening to port 3000...);
    })
```

or in GO as 

```go

// main.go
package main

import (
	"net/http"

	"github.com/labstack/echo/v4"
)

func main() {
	e := echo.New()

	// Route: GET /
	e.GET("/", func(c echo.Context) error {
		return c.String(http.StatusOK, "hello you are connected to the GO echo server")
	})

	// Start server on port 8080
	e.Logger.Fatal(e.Start(":8080"))
}


```
