k# DookuG – Local Development Guide

This document provides a clean summary of the most important links, configuration details, and diagnostic endpoints for running the DookuG environment locally.

---

## 📄 Documentation

### **DookuG Backend Documentation**
https://i-cell-mobilsoft-open-source.github.io/DookuG-backend/

### **OpenAPI Specification**
https://i-cell-mobilsoft-open-source.github.io/DookuG-backend/attachments/generated/openapi/dookug-document-service/openapi.yaml

---

## 🔧 Configuration

You can configure all relevant service parameters inside your `docker-compose.yml`.

For detailed configuration options, see:  
https://i-cell-mobilsoft-open-source.github.io/DookuG-backend/#_dookug_document_service_2

---

## 🧪 Test Certificates

You can request test signing certificates here:

https://srv.e-szigno.hu/szoftveres_teszt_igenyles&cms=on

---

## 📈 Monitoring & Debugging

### **Jaeger UI (Distributed Tracing)**
http://localhost:16686/

### **Health Endpoints**
- General Health: http://localhost:9992/health  
- Liveness: http://localhost:9992/health/live  
- Readiness: http://localhost:9992/health/ready  

### **Metrics (Prometheus/OpenMetrics)**
http://localhost:1234/metrics

---

## 🏁 Summary

This guide collects all essential URLs and diagnostic endpoints needed for efficient development and debugging within the DookuG environment.

---

If you want, I can also add:
- setup steps  
- example cURL requests  
- environment variable documentation  
- service architecture diagrams  

Just let me know!

