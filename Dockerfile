FROM golang:1.9

#
RUN go get github.com/axw/gocov/gocov && go get -u gopkg.in/matm/v1/gocov-html

## Create a directory and Add Code
RUN mkdir -p /go/src/gitlab.followme.com/liuxiaobin/test-srv
WORKDIR /go/src/gitlab.followme.com/liuxiaobin/test-srv
ADD .  /go/src/gitlab.followme.com/liuxiaobin/test-srv

# Download and install any required third party dependencies into the container.
RUN go-wrapper download
# RUN go-wrapper install
RUN ./test_pkg.sh && ./gen_html.sh

