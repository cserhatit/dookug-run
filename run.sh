curl -X POST "http://localhost:8082/internal/dookug/document/sign/inline/multipart" \
  -H "Accept: application/octet-stream" \
  -F "DOCUMENT=@invoice.pdf;type=application/octet-stream" \
  -F "REQUEST=@request.xml;type=application/xml" \
  -o invoice-signed.pdf
