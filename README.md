# DookuG runner

This document provides a clean overview of how to run the DookuG environment locally, along with the most important links, configuration details, and diagnostic endpoints.

---

## 🚀 Start & Stop the Environment

### **Start**

```bash
docker compose -f docker-compose.oss.dookug-document-service.postgresql.yml up
```

### **Start in daemon mode**

```bash
docker compose -f docker-compose.oss.dookug-document-service.postgresql.yml up -d
```

### **Stop**

```bash
docker compose -f docker-compose.oss.dookug-document-service.postgresql.yml down -v
```

---

## ✍️ Sign a Document (cURL Example)

```bash
curl -X POST "http://localhost:8082/internal/dookug/document/sign/inline/multipart" \
  -H "Accept: application/octet-stream" \
  -F "DOCUMENT=@invoice.pdf;type=application/octet-stream" \
  -F "REQUEST=@request.xml;type=application/xml" \
  -o ~/Downloads/invoice-signed.pdf
```

---

## 🧪 Test Certificates

Request test signing certificates here:

[https://srv.e-szigno.hu/szoftveres_teszt_igenyles&cms=on](https://srv.e-szigno.hu/szoftveres_teszt_igenyles&cms=on)

---

## 📄 Documentation

### **DookuG Backend Documentation**

[https://i-cell-mobilsoft-open-source.github.io/DookuG-backend/](https://i-cell-mobilsoft-open-source.github.io/DookuG-backend/)

### **OpenAPI Specification**

[https://i-cell-mobilsoft-open-source.github.io/DookuG-backend/attachments/generated/openapi/dookug-document-service/openapi.yaml](https://i-cell-mobilsoft-open-source.github.io/DookuG-backend/attachments/generated/openapi/dookug-document-service/openapi.yaml)

---

## 🔧 Configuration

Service configuration can be adjusted inside your `docker-compose.yml`.

Detailed configuration reference:
[https://i-cell-mobilsoft-open-source.github.io/DookuG-backend/#_dookug_document_service_2](https://i-cell-mobilsoft-open-source.github.io/DookuG-backend/#_dookug_document_service_2)

---

## 📈 Monitoring & Debugging

### **Jaeger UI (Distributed Tracing)**

[http://localhost:16686/](http://localhost:16686/)

### **Health Endpoints**

* General Health: [http://localhost:9992/health](http://localhost:9992/health)
* Liveness: [http://localhost:9992/health/live](http://localhost:9992/health/live)
* Readiness: [http://localhost:9992/health/ready](http://localhost:9992/health/ready)

### **Metrics (Prometheus/OpenMetrics)**

[http://localhost:1234/metrics](http://localhost:1234/metrics)

---
