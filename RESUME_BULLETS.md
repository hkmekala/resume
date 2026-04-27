# Resume Bullets — Review & Edit Doc (v2)

> **Confidentiality rule (applies everywhere):** No internal **repo names** or **package names** (e.g. `wealth-core`, `@keenai-global/nestjs-api-keys`). Product names (Pulse, Vault, Cosmos) and feature names are fine — use freely.
>
> **v2 changelog (changes from v1, based on your feedback):**
> - Bumped `7+ years` → **8 years** everywhere.
> - Headlines: `FULL` = A + `$1T+ TPV` PayPal scale; `MIN` = C.
> - **K1** rewritten: "OMS" → "Trade Order Management System over 25+ global exchanges (US / Europe / Singapore)".
> - **K2:** removed "Kafka / EventBridge", now **AWS SQS**.
> - **K3:** sharpened — IMS is explicitly for **OTC derivatives**.
> - **K9 + K10 merged** into single bullet (one-shot rewrite: Spring Boot + MySQL → NestJS + MongoDB).
> - **K11 removed** (AWS operationalization).
> - **K12 (Vault)** kept — rephrased to lead with RBAC.
> - **K13 removed**.
> - **P3 reframed** — owned the **OpenAI LLM Gateway** as part of **PayPal Cosmos**.
> - **P2-4** corrected — Scrum Master of the **Cloud Migration Team** specifically.
> - **Skills:** added **Trading Systems** and **Derivatives Markets** to Domain.
> - **Quantifications bolded** throughout.
> - **Aardwolf in min:** now 3 BOTH bullets (no separate min/full split needed).
> - **Kloudgin/Infovity:** 2 bullets in `full`, 1 super-condensed bullet in `min`.

> **Tags:** `[BOTH]` = both variants · `[FULL]` = full only · `[MIN]` = min only.

---

## 0. Headline / Tagline

- **[FULL]** — Senior Software Engineer with **8 years** building **low-latency, fault-tolerant trading and payments backends** — FIX Protocol, OMS/IMS, OTC structured products, AWS cloud, and AI/ML platforms — **contributed to PayPal's $1T+ annual TPV settlement infrastructure**.

- **[MIN]** — Senior Software Engineer specializing in **low-latency trading systems, FIX-based order management, and fault-tolerant distributed backends** — **8 years** across fintech and AI/ML.

---

## 1. KeenAi Global — Senior Associate (May 2025 – Present, Hybrid, Bangalore)

- **[BOTH] K1** — Architected and shipped a **Trade Order Management System** routing flows across **23 global exchanges** (US, Europe, Singapore) and broker-dealers (**Pershing / NetX360**) over the **FIX Protocol** for institutional equity, options, and OTC structured products.

- **[BOTH] K2** — Built an end-to-end **real-time order lifecycle** pipeline — placement, ack, partial-fill, execution report, allocation, settlement — with idempotent state machines and exactly-once event semantics on **AWS SQS**.

- **[BOTH] K3** — Designed and built the **Instrument Master Service (IMS)** on MongoDB — the source-of-truth for **custom OTC derivative instruments** (FCNs, structured notes) — exposing listings, quote-currency, LCM, issuer credit rating, and risk APIs.

- **[BOTH] K4** — Engineered a **fault-tolerant Pershing webhooks** ingestion pipeline (API Gateway + ACM + SQS FIFO + EventBridge) with at-least-once delivery, DLQ handling, and replay — provisioned end-to-end with **Terraform**.

- **[BOTH] K5** — Owned the **FIX execution-report consumer** for OTC FCN trades, reconciling **back-to-back NetX360 ↔ Pershing** flows and matching trade state across upstream brokers and downstream books.

- **[BOTH] K9** — Executed a **full-stack platform rewrite** from **Spring Boot + MySQL** to **NestJS + MongoDB** with zero downtime, unifying the runtime and dramatically improving developer velocity and query performance. <!-- merged old K9 + K10 -->

- **[FULL] K6** — Authored **Temporal workflows** for long-running structured-product lifecycle events (issuance, coupon payments, knock-in / knock-out, early redemption) with deterministic retries, durable state, and human-in-the-loop escalation.

- **[FULL] K7** — Built a low-latency in-memory **trie + scored-cache** search engine over the global instrument universe, returning **sub-100 ms** ranked suggestions across **millions of instruments**.

- **[FULL] K8** — Replaced legacy hardcoded keys with a **Cognito-backed service-to-service auth** layer, centralizing credential issuance, rotation, and audit across internal microservices.

- **[FULL] K12** — Built **Vault**, a secure Dropbox-like internal file-storage system with **fine-grained RBAC**, per-Family-Office tenancy, audit logs, and signed-URL delivery for institutional clients.

### Min variant gets

K1, K2, K3, K4, K5, K9 — six bullets that lead trade order management → IMS for OTC → fault-tolerant webhooks → FIX consumer → full-stack rewrite.

### Full variant gets

K1, K2, K3, K4, K5, K9, K6, K7, K8, K12 — ten bullets total.

---

## 2. PayPal — Software Engineer 3 (Sep 2024 – May 2025, Hybrid, Bangalore)

> **Reframed**: now leads with PayPal Cosmos / OpenAI LLM Gateway ownership.

- **[BOTH] P3-1** — Owned the **OpenAI LLM Gateway** within the **PayPal Cosmos** AI/ML Platform, scaling **multi-tenant inference and training infrastructure** for AI services across PayPal's product surfaces at **$1T+ TPV scale**.

- **[BOTH] P3-2** — Built a unified **LLM Platform** integrating **Azure OpenAI**, enabling production-grade processing of audio, image, and text data for fraud detection, risk scoring, and customer support.

- **[BOTH] P3-3** — Hardened the **Data Loss Prevention (DLP)** system, strengthening data security, risk management, and regulatory compliance across PayPal's enterprise data surfaces.

- **[FULL] P3-4** — Implemented **multi-model context management and hot-switching** across **Gemini, ChatGPT, and Claude** with request-time routing for cost / latency / quality tradeoffs.

---

## 3. PayPal — Software Engineer 2 (Jun 2023 – Aug 2024, Hybrid, Chennai)

- **[BOTH] P2-1** — Led the reengineering and **AWS cloud migration** of PayPal's **Payments settlement infrastructure** from on-prem to a fault-tolerant distributed system on **DynamoDB + EKS**.

- **[BOTH] P2-2** — Built a **real-time snapshotting** solution to accelerate bank settlements, reducing end-of-day processing time and improving daily transaction throughput.

- **[FULL] P2-3** — Spearheaded the migration of a legacy **C++ codebase to Java Spring Boot**, modernizing a critical settlement component and improving maintainability.

- **[FULL] P2-4** — Served as **Scrum Master** for PayPal's **Payments Cloud Migration Team**, driving Agile delivery and continuous improvement throughout the on-prem-to-AWS reengineering.

---

## 4. smallcase — SDE 1 (Apr 2022 – May 2023, Remote, Bangalore)

- **[BOTH] S-1** — Designed a highly available, **low-latency Stock Scorecard REST API** serving **4.5M+ active users**, powering Tickertape's flagship equity-research surface.

- **[BOTH] S-2** — Implemented proprietary algorithms for **PE ratios, portfolio volatility, and equity-fund ranking** by market cap and allocation — feeding Tickertape's screener and recommendation engine.

- **[FULL] S-3** — Integrated **24 new market indices** for real-time sector tracking and added regular Mutual Fund coverage, expanding the platform's tradable universe by **50%**.

- **[FULL] S-4** — Built internal **gRPC** services with **LRU-cache**-backed hot paths to scale Scorecard fan-out to **millions of requests/day**.

- **[FULL] S-5** — Led the migration of Tickertape's core API to a **pod-level segregated NestJS architecture** for fault isolation and stability.

---

## 5. Aardwolf Security — Software Engineer (Nov 2019 – Mar 2022, Remote, London)

> Three BOTH bullets — work for both `min` and `full` without separate variants.

- **[BOTH] A-1** — Built a highly available, **fault-tolerant content ranking system** with a customer-facing REST API and a high-throughput RSS parsing engine.

- **[BOTH] A-2** — Established the full **CI/CD pipeline** (Jenkins + SonarQube) and implemented automated **firewall-based traffic throttling** to mitigate DDoS attacks.

- **[BOTH] A-3** — Built a **PayPal Payouts**-backed affiliate system and designed a **manager-worker queuing system** for large-scale asynchronous content analysis.

---

## 6. Kloudgin / Infovity — Pre-2019

- **[FULL] KI-1** — At **Kloudgin** (Jul – Nov 2019): architected a modular **Netsuite integration** for the FSM platform and engineered a **distributed multi-threaded data-migration** system for enterprise customers.

- **[FULL] KI-2** — At **Infovity** (May 2018 – Jul 2019, contracted to Kloudgin): added video-streaming for crew training, built a **Java iText** wrapper for custom PDF invoices, and shipped a **Docker-based microservices** app for billables / biometrics tracking.

- **[MIN] KI-3** — Earlier roles at **Kloudgin** (SE, 2019) and **Infovity** (Technical Consultant, 2018–19): Netsuite integration, distributed data migration, custom Java tooling, and Docker-based microservices.

---

## 7. Education

- **[BOTH] E-1** — **Vishnu Institute of Technology**, B.Tech in Computer Science and Engineering, 2018. **72% (Distinction).**

- **[FULL] E-2** — Awarded **1st place** in the VEDIC Inter-Collegiate Coding Competition.

- **[FULL] E-3** — Built a **containerized code compiler** for secure remote code execution, the **real-time ranking system** for the annual college coding competition, and a **Moodle plugin** for automatic lab-record generation.

---

## 8. Skills

- **Domain** — **Trading Systems**, **Derivatives Markets**, **Order Management Systems (OMS)**, **Instrument Master (IMS)**, **FIX Protocol**, **OTC Structured Products**, **Fixed Coupon Notes (FCN)**, Trade Lifecycle, Settlement, Wealth Management, Family Offices, Pershing / NetX360
- **Architecture** — Distributed Systems, Microservices, Event-Driven Architecture, Fault Tolerance, High Availability, Low-Latency Design, Idempotency, Exactly-Once Semantics, System Design, Performance Tuning
- **Languages & Frameworks** — Java (Spring Boot), TypeScript / Node.js (NestJS), Python, Go, C++ (legacy), Shell
- **Data & Messaging** — MongoDB, DynamoDB, MySQL, Redis, Kafka, **AWS SQS / EventBridge**, gRPC, REST, **Temporal Workflows**
- **Cloud & DevOps** — AWS (EKS, EC2, Lambda, API Gateway, ACM, CodeDeploy, CloudWatch, IAM, **Cognito**), **Terraform**, Docker, Kubernetes, Jenkins, CI/CD, SonarQube, Sentry
- **AI / ML** — **OpenAI LLM Gateway**, LLM Inference & Training, Azure OpenAI, Gemini, ChatGPT, Claude, Multi-Model Context Management
- **Methodology** — Agile / Scrum (Scrum Master), DevOps, Code Review, Mentoring
- **Interests** — Building custom PC workstations and contributing to open-source projects.

---

## 9. Final sanity check before I build

Quick read-through asks (answer inline or just say "go"):

1. **Headline `FULL` line** — does *"scaled to PayPal's $1T+ annual TPV"* feel comfortable, or do you want to soften to e.g. *"contributed to PayPal's $1T+ annual TPV settlement infrastructure"*? The first reads stronger but might invite tougher interview questions.
   - **Answer:** _____

2. **K1's "25+ global exchanges (US / Europe / Singapore)"** — confirm this number is in the right ballpark? Want me to keep "25+" or use exact ("25") or fuzzier ("multiple")?
   - **Answer:** _____

3. **K12 (Vault)** — final call: keep or drop?
   - **Answer:** _____

4. **P3-1 phrasing** — "Owned the OpenAI LLM Gateway within the PayPal Cosmos AI/ML Platform" — does that match how the team / product is officially named (Cosmos)? Also OK to imply sole ownership, or should it be "co-owned" / "led infrastructure for"?
   - **Answer:** _____

5. **Anything else** I missed?
   - **Answer:** _____

---

## 10. Build plan (when you say "go")

**Files I'll create:**

```
resume/
  style.tex              ← extended with \bb / \fb / \mb macros (xstring)
  data/
    header.tex           ← name, headline (variant-aware), contact
    experience.tex       ← every bullet above, tagged
    education.tex
    skills.tex
  main_full.tex          ← \def\resumevariant{full} + inputs
  main_min.tex           ← \def\resumevariant{min} + inputs
  README.md              ← Overleaf workflow + how to add new bullets
```

**Files to delete or archive** (your call):
- `main.tex` (current monolithic version)
- `relavant.tex` (current min draft)
- `hkmekala_cv_5.pdf`, `hkmekala_cv_6_full.pdf`, `hkmekala_cv_6_min.pdf` (old PDFs — keep for reference?)

**Overleaf workflow** (will document in README):
- Push this repo to GitHub.
- On Overleaf, create **two projects** linked to the same GitHub repo, set main document to `main_full.tex` and `main_min.tex` respectively.
- Edit any `data/*.tex` file → push → both projects auto-rebuild.

Say "go" and I'll build it all in one pass.
