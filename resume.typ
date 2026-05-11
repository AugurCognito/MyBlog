#set page(margin: (x: 1.2cm, y: 1cm))
#set text(font: "New Computer Modern", size: 10pt)
#set par(justify: true, leading: 0.45em)
#set list(spacing: 0.4em)

#let accent = rgb("#2563eb")

#let section(title) = {
  v(3pt)
  text(size: 11pt, weight: "bold", fill: accent, upper(title))
  v(-4pt)
  line(length: 100%, stroke: 0.5pt + accent)
  v(1pt)
}

#let entry(title, subtitle, location, dates) = {
  grid(
    columns: (1fr, auto),
    text(weight: "bold", title),
    text(style: "italic", dates),
  )
  grid(
    columns: (1fr, auto),
    text(style: "italic", subtitle),
    text(location),
  )
}

#let project-entry(name, tech, link: none) = {
  if link != none {
    [*#name* #text(fill: luma(120), "| " + tech) #h(1fr) #text(size: 9pt, fill: accent, link)]
  } else {
    [*#name* #text(fill: luma(120), "| " + tech)]
  }
}

// Header
#align(center)[
  #text(size: 17pt, weight: "bold")[Aniket Singh]
  #v(-4pt)
  #text(size: 10pt)[
    #link("mailto:contact@aniketsingh.net")[contact\@aniketsingh.net]
    #sym.bar.v
    #link("https://aniketsingh.net")[aniketsingh.net]
    #sym.bar.v
    #link("https://github.com/AugurCognito")[github.com/AugurCognito]
    #sym.bar.v
    +91-8625024417
    #sym.bar.v
    Remote
  ]
  #v(1pt)
  #text(size: 9.5pt, fill: luma(60))[
    Backend and platform engineer specializing in Elixir/Phoenix, cloud infrastructure, and compliance-sensitive data systems. \
    Experience building multi-tenant SaaS platforms, workflow engines, and payment integrations at early-stage startups.
  ]
]

#section("Experience")

#entry(
  "Founding Engineer",
  "Alvera AI — Data integration, payments & workflow automation",
  "Remote (SF-based)",
  "Apr 2025 — Present",
)
- Architected multi-tenant Elixir/Phoenix platform serving healthcare, finance, and payments verticals
- Implemented per-tenant data isolation using dynamic Ecto repos with tokenized PII and compliance-grade data handling
- Built data activation pipeline with polymorphic dispatch (Lambda, REST, S3, SQL) and idempotent SNS delivery
- Designed production AWS infrastructure with Terraform — ECS, Aurora Serverless v2, Lambda, and cross-account STS AssumeRole for multi-tenant cloud operations
- Created contract-driven integration test suite (TypeScript/Playwright) for reproducible tenant provisioning across environments
- Built observability platform with telemetry sync from Cloudflare R2, enabling trace analysis and proactive Oban job monitoring
- Led 20+ releases as primary platform engineer

#entry(
  "Founding Engineer",
  "Hamilton Practice — Contactless front-office SaaS for healthcare clinics",
  "Remote (SF-based)",
  "Oct 2023 — Mar 2025",
)
- Primary contributor to the core Elixir/Phoenix platform spanning patient management, scheduling, clinical forms, payments, and multi-tenant practice websites
- Built the entire patient forms subsystem: embedded Ecto schemas for nested medical data, draft/submit workflows, signature capture, and on-demand PDF generation
- Integrated three payment processors (Stripe, Elavon, copay) into patient billing — reducing manual front-office payment collection
- Created a visual workflow builder for configurable notification pipelines with decision nodes and Liquid templating
- Implemented FHIR-aligned data models and Athena EHR integration for standards-compliant patient records
- Built end-to-end smoke test infrastructure with CI integration on GitHub Actions and Fly.io scheduled jobs

#section("Projects")

#project-entry("Ingress", "Elixir, Phoenix LiveView, Oban, PostgreSQL")
- AI-powered research and communication platform — IMAP email sync, RSS/Atom feed ingestion, cron-based automations, and circuit breakers at service boundaries
- Stateless agentic tool-use loop with DB-backed state, pluggable Provider behaviour + ToolRegistry, and full run traceability via structured step logging

#project-entry(
  "Claude Session Explorer",
  "TypeScript, tsup, Biome",
  link: "github.com/AugurCognito/claude-session-explorer",
)
- CLI tool for structured access to Claude Code session history — search, token tracking, file operations, and Markdown/JSON export

#project-entry("Open-Source Contributions", "Go, Rust")
- Moov Watchman (Go) — sanctions screening service; otlp2parquet (Rust) — OpenTelemetry-to-Parquet converter

#section("Skills")

#grid(
  columns: (auto, 1fr),
  column-gutter: 12pt,
  row-gutter: 4pt,
  text(weight: "bold", "Languages"), [Elixir, TypeScript, Python, SQL, Rust, Go, C++],
  text(weight: "bold", "Backend"), [Phoenix, Ecto, Oban (Pro), LiveView, GenServer/OTP, OpenAPI],
  text(weight: "bold", "Infrastructure"), [AWS (ECS, Lambda, Aurora, S3, SNS, CloudFormation, IAM/STS), Terraform, Docker, Fly.io],
  text(weight: "bold", "Data & APIs"), [PostgreSQL, FHIR/HL7, PostgREST, Cloudflare R2, OpenTelemetry, DuckDB],
  text(weight: "bold", "Frontend"), [Phoenix LiveView, Tailwind CSS, AlpineJS],
  text(weight: "bold", "Tools"), [Git, GitHub Actions, Playwright, Selenium, Credo, Dialyzer, WireMock],
)

#section("Education")

#entry(
  "B.E. in Electronics and Telecommunication Engineering",
  "Army Institute of Technology",
  "Pune, India",
  "2020 — 2024",
)
