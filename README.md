# qop

Some bash functions for working with PBS jobs

Basically a very thing wrapper over `qrls` and `qhold`
that allows the user to select a number of jobs
to release or hold.

## Install
Download `qop.sh` via GitHub by cloning the repository or 
just downloading the file.
For a one time install, call `source qop.sh`. 
Otherwise, place `source /path/to/qop.sh` in your `~/.bashrc`,
`~/.bash_functions`, or location of your preference.

## Usage
```
$ qop-release [N]
    Release N jobs from a UserHold. If not given, release all
$ qop-hold [N]
    Apply a UserHold to N jobs. If not given, apply the hold to all
```

## License
MIT License

Copyright (c) 2018 Andrew Johnson, GTRC

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
