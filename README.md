# rails-restaurant-app

**FR** — Application web **Ruby on Rails 8** sur le thème d'un restaurant : modèles, authentification et interface serveur, prête au déploiement conteneurisé via **Kamal**.

**EN** — A **Ruby on Rails 8** web application built around a restaurant theme: models, authentication and server-rendered UI, ready for containerized deployment via **Kamal**.

---

## Fonctionnalités / Features

- **FR**
  - Application MVC Rails (modèles, contrôleurs, vues).
  - Authentification et gestion des accès.
  - Configuration de déploiement **Kamal** + Docker.
  - Suite de tests Rails.
- **EN**
  - Rails MVC application (models, controllers, views).
  - Authentication and access management.
  - **Kamal** + Docker deployment configuration.
  - Rails test suite.

## Stack

Ruby · Ruby on Rails 8 · SQLite/PostgreSQL · Kamal · Docker.

## Lancement / Run

```bash
bundle install
bin/rails db:setup
bin/rails server
#   → http://localhost:3000
```

> **FR** : `RAILS_MASTER_KEY` / `config/master.key` ne sont pas versionnés — configurez-les localement.
> **EN**: `RAILS_MASTER_KEY` / `config/master.key` are not committed — configure them locally.
