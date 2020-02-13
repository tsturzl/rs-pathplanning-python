FROM rust:buster

RUN rustup update nightly; rustup default nightly;

RUN apt-get update && apt-get install -y --no-install-recommends python3-dev python3-pip python-dev && rm -rf /var/lib/apt/lists/*

RUN pip3 install setuptools twine wheel setuptools-rust

RUN mkdir -p /opt/path-planning

WORKDIR /opt/path-planning

CMD ["./build-wheels.sh"]
