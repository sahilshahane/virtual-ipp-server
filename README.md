# Virtual IPP Everywhere Server

A Virtual IPP Everywhere server to print PDF files.

## Install Dependencies
- cups-ipp-utils
    - `ippeveprinter` tool is used to start virtual server

For ubuntu, use the below command : 
```sh
./install-deps.sh
```

## Start Server
```sh
./server.sh
```

## Printing a PDF file
```sh
lp -d <printer_name> <pdf_file_location>
```

In my case i was getting error printing PDF files 
`lp: Unsupported document-format "application/pdf".`

so i was sening raw files, but i'm somewhat sure above command will work for PDF files, if it doesn't then use below command
```sh
lp -d <printer_name> <pdf_file_location> -oraw
```