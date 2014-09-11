# Hamburger

Hamburger aims at being a database agnostic way of backing up your users data
be it for switching from one database server to another or for simply just
backing up your data.

Hamburger works by creating a file in the root of your application called
database_dump.json which will be used when reloading your database.

## Usage

Backing up your database:

***Important:*** Hamburger does not back up your databases's schema or does it
load the schema so before starting with hamburger make sure you run "rake db:schema:dump" and "rake db:schema:load" for your respective operations.


```sh
rake hamburger:dump
```

Loading the data to your database:

```sh
rake hamburger:load
```

## License

This is free to use under the MIT license reading as follows:

The MIT License (MIT)

Copyright (c) 2014 Travis Pessetto

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

