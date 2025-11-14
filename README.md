# dookug-runner


Start:
docker compose -f docker-compose.oss.dookug-document-service.postgresql.yml up

Start in daemon mode:
docker compose -f docker-compose.oss.dookug-document-service.postgresql.yml up -d

Stop:
docker compose -f docker-compose.oss.dookug-document-service.postgresql.yml down -v

Sign:
curl -X POST "http://localhost:8082/internal/dookug/document/sign/inline/multipart" \
  -H "Accept: application/octet-stream" \
  -F "DOCUMENT=@invoice.pdf;type=application/octet-stream" \
  -F "REQUEST=@request.xml;type=application/xml" \
  -o ~/Downloads/invoice-signed.pdf

Test certificates:
https://srv.e-szigno.hu/szoftveres_teszt_igenyles&cms=on

Dookug docs:
https://i-cell-mobilsoft-open-source.github.io/DookuG-backend/

OpenApi:
https://i-cell-mobilsoft-open-source.github.io/DookuG-backend/attachments/generated/openapi/dookug-document-service/openapi.yaml

Configure:
You can configure in the compose.yml service environment
see https://i-cell-mobilsoft-open-source.github.io/DookuG-backend/#_dookug_document_service_2


