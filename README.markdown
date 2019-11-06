All Our Ideas [![Build Status](https://secure.travis-ci.org/allourideas/allourideas.org.png?branch=master)](http://travis-ci.org/allourideas/allourideas.org)
-------------------

All Our Ideas 2.0.  This codebase runs two sites [photocracy.org](http://www.photocracy.org/) and [allourideas.org](http://www.allourideas.org/).

The allourideas.org project provides the user-facing website for doing pairwise voting. This project depends on the API provided by [pairwise-api](https://github.com/allourideas/pairwise-api).  There are several models that are [ActiveResource](http://apidock.com/rails/v2.3.8/ActiveResource/Base) models that connect to the [pairwise API](https://github.com/allourideas/pairwise-api).

## Running using docker-compose
So i added a Dockerfile to both this repo as well as [pairwise](https://github.com/TheWalkingLeek/pairwise-api).

The project is being run in development environment when using docker

- `wget https://raw.githubusercontent.com/TheWalkingLeek/allourideas.org/master/config/docker/docker-compose.yml`
- `wget https://raw.githubusercontent.com/TheWalkingLeek/allourideas.org/master/config/docker/aoi-prod.env.tmpl -O aoi-prod.env`
- `wget https://raw.githubusercontent.com/TheWalkingLeek/allourideas.org/master/config/docker/pairwise-prod.env.tmpl -O pairwise-prod.env`
- edit aoi-prod.env and pairwise-prod.env
- `docker-compose up -d`
- `docker exec -it aoi-pairwise-rails /bin/bash`
- `rake db:schema:load`
- `rake util:useradd[pairwisetest@dkapadia.com,wheatthins]` adjust this if you changed the pairwise credentials in aoi-prod.env
- `exit`
- `docker exec -it aoi-rails /bin/bash`
- `rake db:schema:load`
- `exit`
- You're done, visit your page at http://localhost:3001 :)



Installing
-------------------

<https://github.com/allourideas/allourideas.org/wiki/Installing>

Email List
-------------------

If you would like to join the allourideas email list, send a message to allourideas+subscribe@googlegroups.com.
The email list is a place to ask and discuss technical questions about the project.

If you would like to send a question to the allourideas email list, send your message to allourideas@googlegroups.com.
Note that you can only post if you are already a member of the group.

If you would like to review and search previous content from the email list, visit https://groups.google.com/forum/#!forum/allourideas.

Ownership
-------------------

Copyright (c) 2010, Matthew J. Salganik and the Trustees of Princeton University. Licensed under the 3-clause BSD License, which is also known as the "Modified BSD License".  Full text of the license is below.  This license is GPL compatible (http://www.gnu.org/licenses/license-list.html#ModifiedBSD).


Code for this project has been contributed by (in chronological order): Peter Lubell-Doughtie, Adam Sanders, Pius Uzamere, Dhruv Kapadia, Calvin Lee, Chap Ambrose, Dmitri Garbuzov, Brian Tubergen, and Luke Baker.

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

* Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
* Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
* Neither the name of the <organization> nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL (COPYRIGHT HOLDER) BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

Error monitoring provided by<br/>
[<img src="https://global-uploads.webflow.com/5c741219fd0819540590e785/5c741219fd0819856890e790_asset%2039.svg" width="100">](https://www.bugsnag.com/)
