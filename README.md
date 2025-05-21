# NeuralCura AI

This is the production-grade MLOps platform for healthcare anomaly detection — includes monitoring features such as drift detection and Prometheus metrics integration.
  NeuralCura AI
>>
>> ![CI](https://github.com/santhoshkumarvs/NeuralCura-AI/actions/workflows/deploy.yml/badge.svg)
>> ![License](https://img.shields.io/github/license/santhoshkumarvs/NeuralCura-AI)
>> ![Python](https://img.shields.io/badge/python-3.10+-blue)
>> ![MLOps](https://img.shields.io/badge/status-production--ready-brightgreen)
>>
>> > **NeuralCura AI** is a production-grade MLOps platform for healthcare fraud detection, diagnostics automation, and medical model serving. Built with FastAPI, Docker, Kubernetes, and CI/CD.
>>
>> ---
>>
>> ##  Features
>>
>> - FastAPI-based modular backend
>> - ML Core with scikit-learn & monitoring hooks
>> - Kubernetes-native deployment (YAMLs included)
>> - GitHub Actions + Terraform + .env secrets
>> - Ready for staging, prod, and cloud-native infra
>>
>> ---
>>
>> ##  Project Structure
├── app/ # FastAPI + service logic
├── ml_core/ # ML models, pipelines
├── infra/ # Terraform + cloud infra
├── k8s/ # Kubernetes YAMLs
├── .github/ # CI/CD workflows
├── docker-compose.yml
├── Dockerfile
├── Makefile
└── requirements.txt