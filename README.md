# AI Workshop - OpenEdge ABL Project

This project demonstrates modern ABL development patterns including:

- **Business Entity Architecture** — Layered data access using datasets, business entities, and the singleton factory pattern
- **Windsurf AI Workflows** — Reusable workflows for class creation, constructor generation, method addition, and property management
- **Sports2000 Database** — Built on the standard OpenEdge demo database

## Project Structure

```
src/
  business/          # Business entity layer
    CustomerDataset.i
    CustomerEntity.cls
    ItemDataset.i
    ItemEntity.cls
    EntityFactory.cls
  CustomerWin.w      # Customer UI (refactored to use entities)
  ItemWin.w          # Item UI (legacy fat-client example)
doc/
  business-entity-pattern.md  # Architecture reference
dump/
  sports2000.df      # Database schema
.windsurf/
  rules/             # Coding rules for AI assistant
  workflows/         # Reusable development workflows
```

## Getting Started

1. Install OpenEdge 12.8+
2. Create the sports2000 database: `ant db`
3. Open the project in your IDE
