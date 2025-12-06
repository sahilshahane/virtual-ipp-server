PRINTER_NAME=virtualprinter

ippeveprinter "$PRINTER_NAME" \
            -f application/pdf,image/pwg-raster,image/urf \
            -c $(pwd)/perform-job.sh \
            -v