FROM progrium/cedarish
MAINTAINER Jonathan Rudenberg <jonathan@titanous.com>

ADD ./runner/ /runner
ADD ./build/sdutil /bin/sdutil
ENTRYPOINT ["/runner/init"]

# add default port to expose (can be overridden)
ENV PORT 5000
EXPOSE 5000
