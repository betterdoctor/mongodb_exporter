FROM scratch

COPY mongodb_exporter /mongodb_exporter

ENTRYPOINT ["/mongodb_exporter"]
