# Vinyl Vault

A mobile-first record collection app for cataloguing and browsing your vinyl library. Built with Vue 3, Ionic, and Supabase.

![Crates](src/assets/images/Crates2.jpg)

## Tech Stack

- **Frontend:** Vue 3 (Composition API, `<script setup>`) + TypeScript
- **UI Framework:** Ionic 7 + Ionicons
- **Mobile:** Capacitor 5 (iOS & Android)
- **Backend:** Supabase (Postgres, Auth, Storage)
- **State Management:** Pinia
- **Build Tool:** Vite 5
- **Testing:** Vitest + Cypress

## Features

### Current
- Browse and search your album collection
- Add albums with artist, release year, rating, and cover art
- Upload album artwork via Supabase Storage
- User authentication (email/password)
- User profile management
- Mobile-native experience via Capacitor

### Planned
- Song-level tracking with track numbers and A/B sides
- Genre tagging at album and song level
- Feature artist credits (album + song level)
- Vinyl grading (Mint to Poor)
- Format types (EP, LP, Single)
- Record label metadata
- Genre-based browsing and filtering

## Getting Started

### Prerequisites

- Node.js 18+
- A [Supabase](https://supabase.com) project

### Environment Variables

Create a `.env` file in the project root:

```
VITE_SUPABASE_URL=https://your-project.supabase.co
VITE_API_KEY=your-supabase-anon-key
```

### Development

```bash
npm install
npm run dev
```

### Mobile Builds

```bash
# iOS
npx cap sync ios
npx cap open ios

# Android
npx cap sync android
npx cap open android
```

### Testing

```bash
npm run test:unit      # Vitest
npm run test:e2e       # Cypress
```

## Database Schema

The current schema has `albums` and `artists` tables with Supabase Auth for users. A migration is provided at `supabase/migrations/001_enriched_schema.sql` to extend this with:

- **albums** enriched with `record_label`, `type` (EP/LP/Single), `quality` (grading), `side` (A/B)
- **songs** table with track numbers, sides, and ratings
- **genres** with junction tables for both albums and songs
- **feature artists** at both album and song level

See the migration file for full details.

## Project Structure

```
src/
├── client/          # Supabase client initialisation
├── components/
│   ├── albums/      # Album list, item, form, overview
│   └── layouts/     # Base and login page layouts
├── router/          # Vue Router config
├── store/           # Pinia stores (albums, auth, users)
├── theme/           # Ionic CSS variables
├── utils/           # Image upload helpers
└── views/           # Page-level route components
    └── albums/      # Album CRUD views
```
